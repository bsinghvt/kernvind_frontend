import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_add_feed_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_edit_provider/datasource_edit_state.dart';

import 'package:search_choices/search_choices.dart';

class DatasourceAddDatafeedWidget extends ConsumerStatefulWidget {
  final DatasourceListEntity datasource;
  const DatasourceAddDatafeedWidget({super.key, required this.datasource});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DatasourceAddDatafeedWidgetState();
}

class _DatasourceAddDatafeedWidgetState
    extends ConsumerState<DatasourceAddDatafeedWidget> {
  final _formKey = GlobalKey<FormState>();

  final _datafeedNameTextController = TextEditingController();
  final _datafeedDescTextController = TextEditingController();
  final _datafeedsourceIdTextController = TextEditingController();
  final _datafeedSourceUniqueIdTextController = TextEditingController();
  final _datafeedSourceAccessKeyTextController = TextEditingController();
  final _datafeedNameHintText = 'Datafeed Name (Required)';
  final _datasfeedDescHintText = 'Datafeed Description (Optional)';
  final _youTubeUrlHintText = 'Youtube Url (Required)';
  final _datafeedsourceIdlHintText = 'Datafeed Type (Required)';
  final _googleDriveFolderHintText = 'Google drive folder link (Required)';
  final _googleServiceAccountHintText =
      'Google service account credentials file (Required)';

  String? _datafeedTypeId;

  final List<DropdownMenuItem> _datafeedSourceIds = [
    const DropdownMenuItem<String>(
        value: 'Youtube video transcript',
        child: ListTile(
          title: Text('Youtube video transcript'),
        )),
    const DropdownMenuItem(
        value: 'Google drive',
        child: ListTile(
          title: Text('Google drive'),
        )),
  ];

  VoidCallback _onPressed() {
    String? checkIfEmpty(String text) {
      return text.trim().isEmpty ? null : text;
    }

    void trimText(TextEditingController textEditingController) {
      textEditingController.text = textEditingController.text.trim();
    }

    return () async {
      ref.read(datasourceEditProvider.notifier).setLoadingState();
      trimText(_datafeedNameTextController);
      trimText(_datafeedDescTextController);
      trimText(_datafeedsourceIdTextController);
      trimText(_datafeedSourceUniqueIdTextController);

      String? datafeedSourceTitle;
      String? datafeedSourceUniqueId;
      String? accessKey;

      if (_datafeedTypeId == 'Google drive') {
        final folderUrl =
            checkIfEmpty(_datafeedSourceUniqueIdTextController.text);
        if (folderUrl == null) {
          return;
        }
        datafeedSourceUniqueId = folderUrl.split('folders/')[1].split('?')[0];
        datafeedSourceUniqueId = datafeedSourceUniqueId;
        datafeedSourceTitle = datafeedSourceUniqueId;
        accessKey = checkIfEmpty(_datafeedSourceAccessKeyTextController.text);
        if (accessKey == null) {
          return;
        }
      } else if (_datafeedTypeId == 'Youtube video transcript') {
        await ref.read(datasourceEditProvider.notifier).validateYoutubeVideo(
              url: _datafeedSourceUniqueIdTextController.text,
            );
        final datasourceFeedAddState = ref.read(datasourceEditProvider);
        if (datasourceFeedAddState
            is DatasourceEditStateYoutubeValidationSuccess) {
          datafeedSourceTitle = datasourceFeedAddState.videoTitle;
          datafeedSourceUniqueId = datasourceFeedAddState.videoId;
          ref.read(datasourceEditProvider.notifier).setLoadingState();
        } else {
          return;
        }
      } else {
        return;
      }
      ref.read(datasourceEditProvider.notifier).setInitialState();
      if (_formKey.currentState!.validate() && _datafeedTypeId != null) {
        DatasourceAddFeedEntity datasourceFeed = DatasourceAddFeedEntity(
            datafeedName: _datafeedNameTextController.text,
            datafeedDescription: checkIfEmpty(_datafeedDescTextController.text),
            datafeedsourceId: _datafeedTypeId!,
            datafeedSourceUniqueId: datafeedSourceUniqueId,
            datasourceId: widget.datasource.datasourceId,
            datafeedSourceTitle: datafeedSourceTitle,
            accessKey: accessKey);

        await ref.read(datasourceEditProvider.notifier).addDatasourceDatafeed(
              datasourceFeed: datasourceFeed,
            );
        final addFeedState = ref.read(datasourceEditProvider);
        if (addFeedState is DatasourceEditStateSuccess) {
          ref
              .read(datafeedAddEditModeProvider.notifier)
              .setDatafeedAddEditMode(false);
        }
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final datasourceFeedAddState = ref.watch(datasourceEditProvider);
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(widget.datasource.datasourceName),
              const SizedBox(
                height: 20,
              ),
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
                child: Text(
                    'Add datafeed for ${widget.datasource.datasourceName}.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium),
              ),
              const SizedBox(
                height: 5,
              ),
              AppTextFormField(
                  hintText: _datafeedNameHintText,
                  controller: _datafeedNameTextController,
                  validator: textLengthValidator(
                      hintText: _datafeedNameHintText,
                      minLength: 5,
                      maxLength: 64)),
              const SizedBox(
                height: 10,
              ),
              AppTextFormField(
                hintText: _datasfeedDescHintText,
                controller: _datafeedDescTextController,
                validator: textLengthValidator(
                    hintText: _datasfeedDescHintText,
                    minLength: 0,
                    maxLength: 1024),
                maxLines: null,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 500),
                child: SearchChoices.single(
                  validator: (datafeedType) {
                    if (datafeedType == null || datafeedType.isEmpty) {
                      return 'Datafeed type is required';
                    }
                    return null;
                  },
                  items: _datafeedSourceIds,
                  value: _datafeedTypeId,
                  hint: _datafeedsourceIdlHintText,
                  searchHint: _datafeedsourceIdlHintText,
                  onChanged: (String? value) {
                    setState(() {
                      _datafeedTypeId = value;
                    });
                  },
                  isExpanded: true,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              if (_datafeedTypeId == 'Youtube video transcript')
                AppTextFormField(
                    hintText: _youTubeUrlHintText,
                    controller: _datafeedSourceUniqueIdTextController,
                    validator: textLengthValidator(
                        hintText: _youTubeUrlHintText,
                        minLength: 5,
                        maxLength: 128)),
              if (_datafeedTypeId == 'Google drive') ...<Widget>[
                Text(
                  'Supported files types: pdf, doc, spreadsheet, text',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                    hintText: _googleServiceAccountHintText,
                    labelText: _googleServiceAccountHintText,
                    controller: _datafeedSourceAccessKeyTextController,
                    isObscureText: true,
                    validator: textLengthValidator(
                        hintText: _googleServiceAccountHintText,
                        minLength: 5,
                        maxLength: 8192)),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                    hintText: _googleDriveFolderHintText,
                    labelText: _googleDriveFolderHintText,
                    controller: _datafeedSourceUniqueIdTextController,
                    validator: textLengthValidator(
                        hintText: _googleDriveFolderHintText,
                        minLength: 5,
                        maxLength: 512)),
                Text(
                  'All pdf, doc, spreadsheet and text files from this folder will be uploaded.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
              const SizedBox(
                height: 10,
              ),
              datasourceFeedAddState is DatasourceEditStateLoading
                  ? const CircularProgressIndicator()
                  : Row(
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
                            ref.invalidate(datasourceEditProvider);
                            ref
                                .read(datafeedAddEditModeProvider.notifier)
                                .setDatafeedAddEditMode(false);
                          },
                        ),
                      ],
                    ),
              if (datasourceFeedAddState is DatafeedAddtateFailure)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    datasourceFeedAddState.error.error,
                    textAlign: TextAlign.center,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
