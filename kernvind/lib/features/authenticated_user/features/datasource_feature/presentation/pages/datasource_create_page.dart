import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_token_parse/jwt_token_parse.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/core/widgets/app_gradient_button.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_create_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_feed_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_create_provider/datasource_create_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_create_provider/datasource_create_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list.dart';

import 'package:search_choices/search_choices.dart';

@RoutePage()
class DatasourceCreatePage extends ConsumerStatefulWidget {
  const DatasourceCreatePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DatasourceCreatePageState();
}

class _DatasourceCreatePageState extends ConsumerState<DatasourceCreatePage> {
  final _formKey = GlobalKey<FormState>();

  final _datasourceNameTextController = TextEditingController();
  final _datasourceDescTextController = TextEditingController();
  final _datafeedNameTextController = TextEditingController();
  final _datafeedDescTextController = TextEditingController();
  final _datafeedsourceIdTextController = TextEditingController();
  final _datafeedSourceUniqueIdTextController = TextEditingController();
  final _datafeedSourceAccessKeyTextController = TextEditingController();
  final _datasourceNameHintText = 'Datasource Name (Required)';
  final _datasourceDescHintText = 'Datasource Description (Optional)';
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
      ref.read(datasourceCreateProvider.notifier).setLoadingState();
      _datasourceNameTextController.text =
          _datasourceNameTextController.text.trim();
      _datasourceDescTextController.text =
          _datasourceDescTextController.text.trim();
      trimText(_datafeedNameTextController);
      trimText(_datafeedDescTextController);
      trimText(_datafeedsourceIdTextController);
      trimText(_datafeedSourceUniqueIdTextController);
      final decodeTokenState = await ref.read(accessTokenDecodeProvider.future);
      String? fullName;
      int? userId;
      if (decodeTokenState is DecodeTokenState) {
        userId = decodeTokenState.decodedToken.identity;
        fullName = decodeTokenState.decodedToken.userClaims.fullName;
      }
      String? datafeedSourceUniqueId;
      String? datafeedSourceTitle;
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
        await ref.read(datasourceCreateProvider.notifier).validateYoutubeVideo(
            url: _datafeedSourceUniqueIdTextController.text);
        final datasourceCreateState = ref.read(datasourceCreateProvider);
        if (datasourceCreateState
            is DatasourceCreateProviderStateYoutubeValidationSuccess) {
          datafeedSourceUniqueId = datasourceCreateState.videoId;
          datafeedSourceTitle = datasourceCreateState.videoTitle;
          ref.read(datasourceCreateProvider.notifier).setLoadingState();
        } else {
          return;
        }
      } else {
        return;
      }
      ref.read(datasourceCreateProvider.notifier).setInitialState();
      if (_formKey.currentState!.validate() &&
          userId != null &&
          fullName != null &&
          _datafeedTypeId != null) {
        DatasourceCreateEntity datasource = DatasourceCreateEntity(
          datasourceName: _datasourceNameTextController.text,
          datasourceDescription:
              checkIfEmpty(_datasourceDescTextController.text),
          createdByUserId: userId,
          createdByName: fullName,
          datasourceFeed: DatasourceFeedEntity(
              createdByUserId: userId,
              createdByName: fullName,
              datafeedName: _datafeedNameTextController.text,
              datafeedDescription:
                  checkIfEmpty(_datafeedDescTextController.text),
              datafeedsourceId: _datafeedTypeId!,
              datafeedSourceUniqueId: datafeedSourceUniqueId,
              datafeedSourceTitle: datafeedSourceTitle,
              accessKey: accessKey),
        );

        await ref
            .read(datasourceCreateProvider.notifier)
            .createDatasource(datasource: datasource);
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    //  _userLlmDropdownItems = [];
    // final userLlmListState = ref.watch(userLlmListProvider);

    final datasourceCreateState = ref.watch(datasourceCreateProvider);

    if (datasourceCreateState is DatasourceCreateProviderStateSuccess) {
      ref.invalidate(datasourceListProvider);
      AutoRouter.of(context).maybePopTop();
    }
    /*if (userLlmListState is UserLlmListProviderStateSuccess) {
      for (UserLlmEntity userLlm in userLlmListState.userLlms) {
        _userLlmDropdownItems.add(DropdownMenuItem(
            value: userLlm,
            child: ListTile(
              title: Text(userLlm.userLlmName),
              subtitle: Text('${userLlm.llmId}-${userLlm.llmType}'),
            )));
      }
    }
*/
    return Scaffold(
      appBar: appBar(
        title: 'Create Datasource',
        context: context,
        backButton: true,
        showLogoutAction: false,
      ),
      body: SingleChildScrollView(
          child: /*userLlmListState is UserLlmListProviderStateSuccess
            ? */
              Padding(
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
                /*   SearchChoices.single(
                                    validator: (llm) {
                                      if (llm == null) {
                                        return 'LLM is required';
                                      }
                                      return null;
                                    },
                                    items: _userLlmDropdownItems,
                                    value: _selectedUserLlm,
                                    hint: "Select LLM (Required)",
                                    searchHint: "Select LLM (Required)",
                                    onChanged: (UserLlmEntity? value) {
                                      setState(() {
                                        _selectedUserLlm = value;
                                      });
                                    },
                                    isExpanded: true,
                                  ),*/
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                  hintText: _datasourceNameHintText,
                  controller: _datasourceNameTextController,
                  validator: textLengthValidator(
                      hintText: _datasourceNameHintText,
                      minLength: 5,
                      maxLength: 64),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppTextFormField(
                  hintText: _datasourceDescHintText,
                  controller: _datasourceDescTextController,
                  validator: textLengthValidator(
                      hintText: _datasourceDescHintText,
                      minLength: 0,
                      maxLength: 1024),
                  maxLines: null,
                ),
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
                  child: Text('Datafeed for datasource.',
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
                const SizedBox(
                  height: 20,
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
                    label: _datafeedsourceIdlHintText,
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
                  height: 25,
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
                  height: 25,
                ),
                datasourceCreateState is DatasourceCreateProviderStateLoading
                    ? const CircularProgressIndicator()
                    : AppGradientButton(
                        buttonText: 'Create Datasource',
                        onPressed: _onPressed(),
                      ),
                if (datasourceCreateState
                    is DatasourceCreateProviderStateFailure)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      datasourceCreateState.error.error,
                      textAlign: TextAlign.center,
                    ),
                  )
              ],
            ),
          ),
        ),
      )
          /* : userLlmListState is UserLlmListProviderStateFailure
                 Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        userLlmListState.error.error,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),*/
          ),
    );
  }

  @override
  void dispose() {
    _datasourceNameTextController.dispose();
    _datasourceDescTextController.dispose();
    _datafeedNameTextController.dispose();
    _datafeedDescTextController.dispose();
    _datafeedsourceIdTextController.dispose();
    _datafeedSourceUniqueIdTextController.dispose();
    super.dispose();
  }
}
