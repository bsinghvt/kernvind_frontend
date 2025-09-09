import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/configuration/constants.dart';
import 'package:kernvind/core/providers/jwt_token_parse/jwt_token_parse.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/core/widgets/app_gradient_button.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/public_llm_list_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/public_llm_list_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/public_llm_list_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_create_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_create_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/widgets/llm_model_config_forms/ollama_config_widget.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_config_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';
import 'package:search_choices/search_choices.dart';

@RoutePage()
class UserLlmCreatePage extends ConsumerStatefulWidget {
  const UserLlmCreatePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserLlmCreatePageState();
}

class _UserLlmCreatePageState extends ConsumerState<UserLlmCreatePage> {
  final _formKey = GlobalKey<FormState>();

  final _userLlmNameController = TextEditingController();
  final _userLlmDescController = TextEditingController();

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

  VoidCallback _onPressed() {
    String? checkIfEmpty(String text) {
      return text.isEmpty ? null : text;
    }

    return () async {
      _passwordController.text = _passwordController.text.trim();
      _usernameController.text = _usernameController.text.trim();
      _apiKeyController.text = _apiKeyController.text.trim();
      _urlController.text = _urlController.text.trim();
      _authHeaderController.text = _authHeaderController.text.trim();

      _userLlmNameController.text = _userLlmNameController.text.trim();
      _userLlmDescController.text = _userLlmDescController.text.trim();
      final decodeTokenState = await ref.read(accessTokenDecodeProvider.future);

      int? userId;
      if (decodeTokenState is DecodeTokenState) {
        userId = decodeTokenState.decodedToken.identity;
      }
      if (_formKey.currentState!.validate() && userId != null) {
        UserLlmConfigEntity llmConfig = UserLlmConfigEntity(
          url: checkIfEmpty(_urlController.text),
          apiKey: checkIfEmpty(_apiKeyController.text),
          apiKeyHeader: checkIfEmpty(_authHeaderController.text),
          userName: checkIfEmpty(_usernameController.text),
          password: checkIfEmpty(_passwordController.text),
        );
        UserLlmEntity userLlmEntity = UserLlmEntity(
            userLlmName: _userLlmNameController.text,
            userLlmDescription: checkIfEmpty(_userLlmDescController.text),
            llmId: _selectedLlm!.llmName,
            llmType: _selectedLlm!.llmmodeltypeName,
            userId: userId,
            llmConfig: llmConfig);
        ref
            .read(userLlmCreateProvider.notifier)
            .createUserLlm(userLlmEntity: userLlmEntity);
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final publicLlmListState = ref.watch(publicLlmListProvider);
    final userLlmCreateState = ref.watch(userLlmCreateProvider);
    _llmDropdownItems = [];
    if (publicLlmListState is LlmListProviderStateSuccess) {
      for (PublicLlmListEntity llm in publicLlmListState.llms) {
        _llmDropdownItems.add(DropdownMenuItem(
            value: llm, child: Text('${llm.llmName}-${llm.llmmodeltypeName}')));
      }
    }
    if (userLlmCreateState is LlmCreateStateSuccess) {
      ref.invalidate(userLlmListProvider);
      AutoRouter.of(context).maybePopTop();
    }
    return Scaffold(
      appBar: appBar(
          title: 'Create AI model',
          context: context,
          backButton: true,
          showLogoutAction: false),
      body: SingleChildScrollView(
        child: ConstrainedBox(
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
                          publicLlmListState is LlmListProviderStateLoading
                              ? const CircularProgressIndicator()
                              : ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxWidth: 500),
                                  child: SearchChoices.single(
                                    validator: (llm) {
                                      if (llm == null) {
                                        return 'AI model is required';
                                      }
                                      return null;
                                    },
                                    items: _llmDropdownItems,
                                    value: _selectedLlm,
                                    hint: "Select AI model (Required)",
                                    searchHint: "Select AI model (Required)",
                                    onClear: () {
                                      setState(() {
                                        _showConfigForm.forEach((key, val) {
                                          _showConfigForm[key] = false;
                                          _validateConfigLength[key] = 0;
                                        });
                                      });
                                    },
                                    onChanged: (PublicLlmListEntity? value) {
                                      setState(() {
                                        _selectedLlm = value;
                                        if (_selectedLlm != null) {
                                          _showConfigForm.forEach((key, val) {
                                            if (key ==
                                                _selectedLlm!
                                                    .llmmodeltypeName) {
                                              _showConfigForm[key] = true;
                                              _validateConfigLength[key] = 8;
                                            } else {
                                              _showConfigForm[key] = false;
                                              _validateConfigLength[key] = 0;
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
                          if (_selectedLlm != null)
                            AppTextFormField(
                              hintText: 'Name (Required)',
                              controller: _userLlmNameController,
                              validator: textLengthValidator(
                                  hintText: 'Name',
                                  minLength: 5,
                                  maxLength: 50),
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                          if (_selectedLlm != null)
                            AppTextFormField(
                              hintText: 'Description (Optional)',
                              controller: _userLlmDescController,
                              validator: textLengthValidator(
                                  hintText: 'Description',
                                  minLength: 0,
                                  maxLength: 512),
                            ),
                          if (_showConfigForm[ConstantsSingleton().openAI] ==
                              true)
                            Column(
                              children: [
                                AppTextFormField(
                                  hintText: _openAIapiKeyHint,
                                  controller: _apiKeyController,
                                  isObscureText: true,
                                  validator: textLengthValidator(
                                      hintText: _openAIapiKeyHint,
                                      minLength: _validateConfigLength[
                                          ConstantsSingleton().openAI]!,
                                      maxLength: 2048),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    AutoRouter.of(context)
                                        .push(const GetChatGptApiKeyRoute());
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
                          if (_showConfigForm[ConstantsSingleton().ollama] ==
                              true)
                            OllamaConfigWidget(
                              urlController: _urlController,
                              apiKeyController: _apiKeyController,
                              authHeaderController: _authHeaderController,
                              usernameController: _usernameController,
                              passwordController: _passwordController,
                            ),
                          userLlmCreateState is LlmCreateStateLoading
                              ? const CircularProgressIndicator()
                              : AppGradientButton(
                                  buttonText: 'Create AI model',
                                  onPressed: _onPressed(),
                                ),
                          userLlmCreateState is LlmCreateStateFailure
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color:
                                          Theme.of(context).colorScheme.error,
                                    ),
                                    userLlmCreateState.error.error,
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                )
              : publicLlmListState is LlmListProviderStateFailure ||
                      userLlmCreateState is LlmCreateStateFailure
                  ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          publicLlmListState is LlmListProviderStateFailure
                              ? publicLlmListState.error.error
                              : userLlmCreateState is LlmCreateStateFailure
                                  ? userLlmCreateState.error.error
                                  : '',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
        ),
      ),
    );
  }
}
