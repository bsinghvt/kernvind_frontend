import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/configuration/constants.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/core/widgets/app_gradient_button.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/playground/domain/entities/playground_llm_config_entity.dart';
import 'package:kernvind/features/playground/domain/entities/public_llm_list_entity.dart';
import 'package:kernvind/features/playground/presentation/providers/playground_create_provider.dart';
import 'package:kernvind/features/playground/presentation/providers/playground_create_provider_state.dart';
import 'package:kernvind/features/playground/presentation/providers/public_llm_list_provider.dart';
import 'package:kernvind/features/playground/presentation/providers/public_llm_list_provider_state.dart';
import 'package:kernvind/features/playground/presentation/widgets/llm_model_config_forms/ollama_config_widget.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';
import 'package:search_choices/search_choices.dart';
import 'package:file_picker/file_picker.dart';
import 'package:uuid/uuid.dart';

@RoutePage()
class PlaygroundSetupPage extends ConsumerStatefulWidget {
  const PlaygroundSetupPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PlaygroundSetupPageState();
}

class _PlaygroundSetupPageState extends ConsumerState<PlaygroundSetupPage> {
  final _formKey = GlobalKey<FormState>();
  final _apiKeyController = TextEditingController();
  final _urlController = TextEditingController();
  final _authHeaderController = TextEditingController();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _openAIapiKeyHint = 'OpenAI key (Required)';

  final Map<String, bool> _showConfigForm = {
    ConstantsSingleton().ollama: false,
    ConstantsSingleton().openAI: false,
  };
  final Map<String, int> _validateConfigLength = {
    ConstantsSingleton().ollama: 0,
    ConstantsSingleton().openAI: 0,
  };
  PublicLlmListEntity? _selectedLlm;
  List<DropdownMenuItem<PublicLlmListEntity>> _llmDropdownItems = [];
  bool? _useMyLlm = false;
  bool? _useKernvindLlm = false;
  PlatformFile? _file;
  String _selectedFile = '';
  String _selectedFileError = '';
  @override
  Widget build(BuildContext context) {
    const uuid = Uuid();
    final botId = uuid.v4();
    final publicLlmListState = ref.watch(publicLlmListProvider);
    _llmDropdownItems = [];
    if (publicLlmListState is LlmListProviderStateSuccess) {
      for (PublicLlmListEntity llm in publicLlmListState.llms) {
        _llmDropdownItems.add(DropdownMenuItem(
            value: llm, child: Text('${llm.llmName}-${llm.llmmodeltypeName}')));
      }
    }
    final playgroundCreateState = ref.watch(playgroundCreateProvider);
    if (playgroundCreateState is PlaygroundCreateProviderStateSuccess) {
      AutoRouter.of(context).push(PlaygroundChatRoute(
          token: playgroundCreateState.tokenEntity.token,
          botId: botId,
          llmConfig: playgroundCreateState.llmConfig));
    }
    return Scaffold(
        appBar: appBar(
            title: 'Kernvind Playground setup',
            context: context,
            ref: ref,
            backButton: true,
            showLogoutAction: false),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Select an option for AI Model (Required)',
                  style: TextStyle(color: Color.fromARGB(255, 152, 188, 154)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: _useKernvindLlm,
                        onChanged: (bool? value) {
                          ref
                              .read(playgroundCreateProvider.notifier)
                              .setStateInitial();
                          setState(() {
                            _useKernvindLlm = value;
                            if (_useKernvindLlm == true) {
                              _useMyLlm = false;
                            }
                          });
                        }),
                    Text(
                      'I want to use default AI model provided by Kernvind.',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: _useMyLlm,
                        onChanged: (bool? value) {
                          ref
                              .read(playgroundCreateProvider.notifier)
                              .setStateInitial();
                          setState(() {
                            _useMyLlm = value;
                            if (_useMyLlm == true) {
                              _useKernvindLlm = false;
                            }
                          });
                        }),
                    Text(
                      'I want to use my AI model.',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                if (_useMyLlm == true)
                  ConstrainedBox(
                    constraints: const BoxConstraints(),
                    child: publicLlmListState is LlmListProviderStateSuccess
                        ? Padding(
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
                                    publicLlmListState
                                            is LlmListProviderStateLoading
                                        ? const CircularProgressIndicator()
                                        : ConstrainedBox(
                                            constraints: const BoxConstraints(
                                                maxWidth: 500),
                                            child: SearchChoices.single(
                                              validator: (llm) {
                                                if (llm == null) {
                                                  return 'AI model is required';
                                                }
                                                return null;
                                              },
                                              items: _llmDropdownItems,
                                              value: _selectedLlm,
                                              hint:
                                                  "Select AI model (Required)",
                                              searchHint:
                                                  "Select AI model (Required)",
                                              onClear: () {
                                                ref
                                                    .read(
                                                        playgroundCreateProvider
                                                            .notifier)
                                                    .setStateInitial();
                                                setState(() {
                                                  _showConfigForm
                                                      .forEach((key, val) {
                                                    _showConfigForm[key] =
                                                        false;
                                                    _validateConfigLength[key] =
                                                        0;
                                                  });
                                                });
                                              },
                                              onChanged:
                                                  (PublicLlmListEntity? value) {
                                                ref
                                                    .read(
                                                        playgroundCreateProvider
                                                            .notifier)
                                                    .setStateInitial();
                                                setState(() {
                                                  _selectedLlm = value;
                                                  if (_selectedLlm != null) {
                                                    _showConfigForm
                                                        .forEach((key, val) {
                                                      if (key ==
                                                          _selectedLlm!
                                                              .llmmodeltypeName) {
                                                        _showConfigForm[key] =
                                                            true;
                                                        _validateConfigLength[
                                                            key] = 8;
                                                      } else {
                                                        _showConfigForm[key] =
                                                            false;
                                                        _validateConfigLength[
                                                            key] = 0;
                                                      }
                                                    });
                                                  }
                                                });
                                              },
                                              isExpanded: true,
                                            ),
                                          ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    if (_showConfigForm[
                                            ConstantsSingleton().openAI] ==
                                        true)
                                      Column(
                                        children: [
                                          AppTextFormField(
                                            hintText: _openAIapiKeyHint,
                                            controller: _apiKeyController,
                                            isObscureText: true,
                                            validator: textLengthValidator(
                                                hintText: _openAIapiKeyHint,
                                                minLength:
                                                    _validateConfigLength[
                                                        ConstantsSingleton()
                                                            .openAI]!,
                                                maxLength: 2048),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              AutoRouter.of(context).push(
                                                  const GetChatGptApiKeyRoute());
                                            },
                                            child: Text(
                                              'How to get OpenAI (ChatGpt) API Key?',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleMedium
                                                  ?.copyWith(
                                                    color: Colors.blue[100],
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      )
                                    else
                                      Container(),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    if (_showConfigForm[
                                            ConstantsSingleton().ollama] ==
                                        true)
                                      OllamaConfigWidget(
                                        urlController: _urlController,
                                        apiKeyController: _apiKeyController,
                                        authHeaderController:
                                            _authHeaderController,
                                        usernameController: _usernameController,
                                        passwordController: _passwordController,
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : publicLlmListState is LlmListProviderStateFailure ||
                                playgroundCreateState
                                    is PlaygroundCreateProviderStateError
                            ? Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                                    publicLlmListState
                                            is LlmListProviderStateFailure
                                        ? publicLlmListState.error.error
                                        : playgroundCreateState
                                                is PlaygroundCreateProviderStateError
                                            ? playgroundCreateState.error.error
                                            : '',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              )
                            : const Center(
                                child: CircularProgressIndicator(),
                              ),
                  ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 0.6,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 500),
                  child: const Text(
                      style:
                          TextStyle(color: Color.fromARGB(255, 161, 176, 156)),
                      'Choose a file (Max 300 kb), and the AI model will find information in it based on your queries. Supported file types: PDF (up to 100 pages), DOC, TXT, CSV, and Excel. (Required)'),
                ),
                TextButton(
                  onPressed: () async {
                    ref
                        .read(playgroundCreateProvider.notifier)
                        .setStateInitial();
                    _file = null;
                    _selectedFile = '';
                    _selectedFileError = '';
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: [
                        'txt',
                        'pdf',
                        'doc',
                        'docx',
                        'csv',
                        'xlsx'
                      ],
                    );
                    if (result != null) {
                      PlatformFile file = result.files.first;
                      final kb = file.size / 1024;
                      if (kb < 301) {
                        setState(() {
                          _selectedFile = file.name;
                          _file = file;
                          _selectedFileError = '';
                        });
                      } else {
                        setState(() {
                          _selectedFile = '';
                          _file = null;
                          _selectedFileError =
                              'Please choose a file less than 300 kb';
                        });
                      }
                    } else {
                      // User canceled the picker
                    }
                  },
                  child: const Text('Click to choose a file.'),
                ),
                if (_selectedFile.isNotEmpty)
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 500),
                    child: Text('Selected file: $_selectedFile'),
                  ),
                if (_selectedFileError.isNotEmpty) ...[
                  const Divider(
                    thickness: 0.6,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      _selectedFileError,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 0.6,
                ),
                playgroundCreateState is PlaygroundCreateProviderStateLoading
                    ? const CircularProgressIndicator()
                    : AppGradientButton(
                        buttonText: 'Create playground',
                        onPressed: () async {
                          PlaygroundLlmConfigEntity? llmConfig;
                          if (_selectedLlm != null) {
                            llmConfig = PlaygroundLlmConfigEntity(
                              useMyLlm: _useMyLlm == null || _useMyLlm == false
                                  ? false
                                  : true,
                              apiKey: _apiKeyController.text,
                              apiKeyHeader: _authHeaderController.text,
                              userName: _usernameController.text,
                              password: _passwordController.text,
                              url: _urlController.text,
                              llmName: _selectedLlm!.llmName,
                              llmType: _selectedLlm!.llmmodeltypeName,
                            );
                          } else {
                            llmConfig = PlaygroundLlmConfigEntity(
                              useMyLlm: _useMyLlm == null || _useMyLlm == false
                                  ? false
                                  : true,
                            );
                          }
                          if (_useKernvindLlm == false && _useMyLlm == false) {
                            setState(() {
                              _selectedFileError =
                                  'Please select an option for AI model';
                            });
                            return;
                          }
                          if (_file == null) {
                            setState(() {
                              _selectedFileError = 'File is not selected';
                            });
                            return;
                          }
                          //print('clicked');
                          if (_formKey.currentState != null) {
                            if (_formKey.currentState!.validate()) {
                              await ref
                                  .read(playgroundCreateProvider.notifier)
                                  .uploadPlaygroundFile(
                                      file: _file!, llmConfig: llmConfig);
                            }
                          } else {
                            await ref
                                .read(playgroundCreateProvider.notifier)
                                .uploadPlaygroundFile(
                                    file: _file!, llmConfig: llmConfig);
                          }
                        },
                      ),
                playgroundCreateState is PlaygroundCreateProviderStateError
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          playgroundCreateState.error.error,
                          textAlign: TextAlign.center,
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
        ));
  }
}
