import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_add_user_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_edit_mode_provider.dart';

class BotUserAddWidget extends ConsumerStatefulWidget {
  final int botId;
  const BotUserAddWidget({super.key, required this.botId});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BotUserAddWidgetState();
}

class _BotUserAddWidgetState extends ConsumerState<BotUserAddWidget> {
  final _formKey = GlobalKey<FormState>();
  final _userEmailTextController = TextEditingController();

  final _userEmailHintText = 'User email (Required)';
  bool? _canChangeDatasource = false;
  bool? _canAddUsers = false;
  bool? _canSeeDatasource = false;
  final bool _canSeeDatasourcefeed = false;
  final bool _canChangeDatasourcefeed = false;
  bool? _canSeeLlm = false;
  bool? _canChangeLlm = false;

  VoidCallback _onPressed() {
    String? checkIfEmpty(String text) {
      return text.trim().isEmpty ? null : text;
    }

    void trimText(TextEditingController textEditingController) {
      textEditingController.text = textEditingController.text.trim();
    }

    return () async {
      trimText(_userEmailTextController);

      final userEmail = checkIfEmpty(_userEmailTextController.text);

      if (_formKey.currentState!.validate() && userEmail != null) {
        await ref.read(botDetailsEditProvider.notifier).addUserToBot(
            bot: BotAddUserEntity(
                botId: widget.botId,
                userToAddEmail: userEmail,
                canAddUsers: _canAddUsers!,
                canChangeDatasource: _canChangeDatasource!,
                canSeeDatasource: _canSeeDatasource!,
                canSeeDatasourcefeed: _canSeeDatasourcefeed,
                canChangeDatasourcefeed: _canChangeDatasourcefeed,
                canSeeLlm: _canSeeLlm!,
                canChangeLlm: _canChangeLlm!));
        final updateState = ref.read(botDetailsEditProvider);
        if (updateState is BotDetailsEditStateSuccess) {
          ref
              .read(botAddUserEditModeProvider.notifier)
              .setAddUserEditMode(false);
        }
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final updateState = ref.watch(botDetailsEditProvider);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(children: [
            Container(
              width: 250,
              height: 25,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).highlightColor,
                    Theme.of(context).secondaryHeaderColor,
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text('Add new user',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleMedium),
            ),
            const SizedBox(
              height: 5,
            ),
            AppTextFormField(
              labelText: 'User email',
              hintText: _userEmailHintText,
              controller: _userEmailTextController,
              validator: emailValidator(
                _userEmailHintText,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Checkbox(
                  value: _canChangeDatasource,
                  onChanged: (bool? value) {
                    setState(() {
                      _canChangeDatasource = value;
                      if (_canChangeDatasource == true) {
                        _canSeeDatasource = true;
                      }
                    });
                  }),
              Text(
                'Can change datasource',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Checkbox(
                  value: _canChangeDatasource == true
                      ? _canChangeDatasource
                      : _canSeeDatasource,
                  onChanged: _canChangeDatasource == true
                      ? null
                      : (bool? value) {
                          setState(() {
                            _canSeeDatasource = value;
                          });
                        }),
              Text(
                'Can see datasource',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Checkbox(
                  value: _canChangeLlm,
                  onChanged: (bool? value) {
                    setState(() {
                      _canChangeLlm = value;
                      if (_canChangeLlm == true) {
                        _canSeeLlm = true;
                      }
                    });
                  }),
              Text(
                'Can change LLM',
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: _canChangeLlm == true ? _canChangeLlm : _canSeeLlm,
                    onChanged: _canChangeLlm == true
                        ? null
                        : (bool? value) {
                            setState(() {
                              _canSeeLlm = value;
                            });
                          }),
                Text(
                  'Can see LLM',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                    value: _canAddUsers,
                    onChanged: (bool? value) {
                      setState(() {
                        _canAddUsers = value;
                      });
                    }),
                Text(
                  'Can add users',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
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
                        .read(botAddUserEditModeProvider.notifier)
                        .setAddUserEditMode(false);
                  },
                ),
              ],
            ),
            if (updateState is BotDetailsUserAddEditStateFailure)
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
