import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/configuration/constants.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/public_llm_list_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_in_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/domain/entities/user_llm_update_entity.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/public_llm_list_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/public_llm_list_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_update_provider.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/providers/user_llm_update_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/user_llm/presentation/widgets/llm_model_config_forms/ollama_config_widget.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_config_entity.dart';
import 'package:search_choices/search_choices.dart';

class UserLlmEditWidget extends ConsumerStatefulWidget {
  final UserLlmInEntity userLlm;
  const UserLlmEditWidget({super.key, required this.userLlm});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserLlmEditWidgetState();
}

class _UserLlmEditWidgetState extends ConsumerState<UserLlmEditWidget> {
  bool? _changeConfig = false;
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
      return text.trim().isEmpty ? null : text;
    }

    return () async {
      _passwordController.text = _passwordController.text.trim();
      _usernameController.text = _usernameController.text.trim();
      _apiKeyController.text = _apiKeyController.text.trim();
      _urlController.text = _urlController.text.trim();
      _authHeaderController.text = _authHeaderController.text.trim();

      _userLlmNameController.text = _userLlmNameController.text.trim();
      _userLlmDescController.text = _userLlmDescController.text.trim();
      final desc = checkIfEmpty(_userLlmDescController.text);
      if (desc == widget.userLlm.userLlmDescription &&
          _userLlmNameController.text == widget.userLlm.userLlmName &&
          widget.userLlm.llmId == _selectedLlm?.llmName &&
          _changeConfig == false) {
        return;
      }
      if (_formKey.currentState!.validate()) {
        UserLlmConfigEntity llmConfig = UserLlmConfigEntity(
          url: checkIfEmpty(_urlController.text),
          apiKey: checkIfEmpty(_apiKeyController.text),
          apiKeyHeader: checkIfEmpty(_authHeaderController.text),
          userName: checkIfEmpty(_usernameController.text),
          password: checkIfEmpty(_passwordController.text),
        );
        UserLlmUpdateEntity userLlmEntity = UserLlmUpdateEntity(
            userLlmName: _userLlmNameController.text,
            userLlmDescription: checkIfEmpty(_userLlmDescController.text),
            llmId: _selectedLlm!.llmName,
            llmType: _selectedLlm!.llmmodeltypeName,
            llmConfig: llmConfig,
            userLlmId: widget.userLlm.userLlmId,
            userId: widget.userLlm.userId);
        await ref
            .read(userLlmUpdateProvider.notifier)
            .updateUserLlm(userLlm: userLlmEntity);
        final userLlmUpdateState = ref.read(userLlmUpdateProvider);
        if (userLlmUpdateState is UserLlmUpdateProviderStateSuccess) {
          ref
              .read(userLlmEditModeProviderProvider.notifier)
              .setUserLlmEditMode(false);
        }
      }
    };
  }

  @override
  void initState() {
    super.initState();
    _selectedLlm = PublicLlmListEntity(
        llmName: widget.userLlm.llmId,
        llmmodeltypeName: widget.userLlm.llmType,
        created: DateTime.now(),
        modified: DateTime.now());
    _showConfigForm.forEach((key, val) {
      if (key == _selectedLlm!.llmmodeltypeName) {
        _showConfigForm[key] = true;
        _validateConfigLength[key] = 8;
      } else {
        _showConfigForm[key] = false;
        _validateConfigLength[key] = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final userLlm = widget.userLlm;
    _userLlmNameController.text = userLlm.userLlmName;
    if (userLlm.userLlmDescription != null) {
      _userLlmDescController.text = userLlm.userLlmDescription!;
    }
    final publicLlmListState = ref.watch(publicLlmListProvider);
    final userLlmUpdateState = ref.watch(userLlmUpdateProvider);
    _llmDropdownItems = [];
    if (publicLlmListState is LlmListProviderStateSuccess) {
      for (PublicLlmListEntity llm in publicLlmListState.llms) {
        if (llm.llmName == _selectedLlm!.llmName) {
          _llmDropdownItems.add(DropdownMenuItem(
              value: _selectedLlm,
              child: Text('${llm.llmName}-${llm.llmmodeltypeName}')));
        } else {
          _llmDropdownItems.add(DropdownMenuItem(
              value: llm,
              child: Text('${llm.llmName}-${llm.llmmodeltypeName}')));
        }
      }
    }
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
              publicLlmListState is LlmListProviderStateLoading
                  ? const CircularProgressIndicator()
                  : ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
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
                                if (key == _selectedLlm!.llmmodeltypeName) {
                                  _showConfigForm[key] = true;
                                  _validateConfigLength[key] = 8;
                                } else {
                                  _showConfigForm[key] = false;
                                  _validateConfigLength[key] = 0;
                                }
                              });
                              if (_selectedLlm?.llmmodeltypeName !=
                                  widget.userLlm.llmType) {
                                _changeConfig = true;
                              } else {
                                _changeConfig = false;
                              }
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
                      hintText: 'Name', minLength: 5, maxLength: 50),
                ),
              const SizedBox(
                height: 10,
              ),
              if (_selectedLlm != null)
                AppTextFormField(
                  hintText: 'Description (Optional)',
                  controller: _userLlmDescController,
                  validator: textLengthValidator(
                      hintText: 'Description', minLength: 0, maxLength: 512),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Change Configuration',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Checkbox(
                      value: _changeConfig,
                      onChanged: (bool? value) {
                        setState(() {
                          _changeConfig = value;
                        });
                      }),
                ],
              ),
              if (_showConfigForm[ConstantsSingleton().openAI] == true &&
                  _changeConfig == true)
                AppTextFormField(
                  isObscureText: true,
                  hintText: _openAIapiKeyHint,
                  controller: _apiKeyController,
                  validator: textLengthValidator(
                      hintText: _openAIapiKeyHint,
                      minLength:
                          _validateConfigLength[ConstantsSingleton().openAI]!,
                      maxLength: 2048),
                )
              else
                Container(),
              const SizedBox(
                height: 10,
              ),
              if (_showConfigForm[ConstantsSingleton().ollama] == true &&
                  _changeConfig == true)
                OllamaConfigWidget(
                  urlController: _urlController,
                  apiKeyController: _apiKeyController,
                  authHeaderController: _authHeaderController,
                  usernameController: _usernameController,
                  passwordController: _passwordController,
                ),
              userLlmUpdateState is UserLlmUpdateProviderStateLoading
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
                            ref
                                .read(userLlmEditModeProviderProvider.notifier)
                                .setUserLlmEditMode(false);
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
              userLlmUpdateState is UserLlmUpdateProviderStateFailure
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.error,
                        ),
                        userLlmUpdateState.error.error,
                        textAlign: TextAlign.center,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
