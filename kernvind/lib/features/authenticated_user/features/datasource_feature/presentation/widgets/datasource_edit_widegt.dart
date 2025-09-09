import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_update_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_state.dart';

class DatasourceEditWidegt extends ConsumerStatefulWidget {
  final DatasourceListEntity datasource;
  const DatasourceEditWidegt({super.key, required this.datasource});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DatasourceEditWidegtState();
}

class _DatasourceEditWidegtState extends ConsumerState<DatasourceEditWidegt> {
  final _formKey = GlobalKey<FormState>();
  final _descTextController = TextEditingController();
  final _descHintText = 'Datasource Description (Required)';

  VoidCallback _onPressed() {
    String? checkIfEmpty(String text) {
      return text.trim().isEmpty ? null : text;
    }

    void trimText(TextEditingController textEditingController) {
      textEditingController.text = textEditingController.text.trim();
    }

    return () async {
      trimText(_descTextController);
      final description = checkIfEmpty(_descTextController.text);

      if (_formKey.currentState!.validate()) {
        if (description == widget.datasource.datasourceDescription) {
          return;
        }
        await ref.read(datasourceEditProvider.notifier).updateNameAndDesc(
            datasource: DatasourceUpdateEntity(
                datasourceId: widget.datasource.datasourceId,
                datasourceDescription: description));
        final updateState = ref.read(datasourceEditProvider);
        if (updateState is DatasourceEditStateSuccess) {
          ref
              .read(datasourceEditModeProvider.notifier)
              .setDatasourceEditMode(false);
        }
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final updateState = ref.watch(datasourceEditProvider);
    final datasource = widget.datasource;
    if (datasource.datasourceDescription != null) {
      _descTextController.text = datasource.datasourceDescription!;
    }

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            Text(datasource.datasourceName),
            const SizedBox(
              height: 20,
            ),
            AppTextFormField(
              labelText: _descHintText,
              hintText: _descHintText,
              controller: _descTextController,
              validator: textLengthValidator(
                  hintText: _descHintText, minLength: 5, maxLength: 1024),
              maxLines: null,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: _onPressed(),
                  child: const Text('SAVE'),
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: Text(
                    'CANCEL',
                    style: TextStyle(color: Colors.red[400]),
                  ),
                  onPressed: () {
                    ref
                        .read(datasourceEditModeProvider.notifier)
                        .setDatasourceEditMode(false);
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
            if (updateState is DatasourceNameAndDescEditStateFailure)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  updateState.error.error,
                  textAlign: TextAlign.center,
                ),
              )
          ]),
        ),
      ),
    );
  }
}
