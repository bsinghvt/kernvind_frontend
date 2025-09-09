import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_token_parse/jwt_token_parse.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_bar.dart';
import 'package:kernvind/core/widgets/app_gradient_button.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_provider_state.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list_provider_state.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider_state.dart';
import 'package:kernvind/routes/auto_route_router.gr.dart';
import 'package:search_choices/search_choices.dart';

@RoutePage()
class BotCreatePage extends ConsumerStatefulWidget {
  const BotCreatePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BotCreatePageState();
}

class _BotCreatePageState extends ConsumerState<BotCreatePage> {
  final _formKey = GlobalKey<FormState>();

  final _botNameTextController = TextEditingController();
  final _botDescTextController = TextEditingController();
  final _botNameHintText = 'Bot Name (Required)';
  final _botDescHintText = 'Bot Description (Optional)';
  bool? _addDataSource = false;

  UserLlmEntity? _selectedUserLlm;
  List<DropdownMenuItem<UserLlmEntity>> _userLlmDropdownItems = [];

  DatasourceListEntity? _selectedDataSource;
  List<DropdownMenuItem<DatasourceListEntity>> _datasourceDropdownItems = [];

  @override
  void initState() {
    super.initState();
  }

  VoidCallback _onPressed() {
    String? checkIfEmpty(String text) {
      return text.trim().isEmpty ? null : text;
    }

    return () async {
      _botNameTextController.text = _botNameTextController.text.trim();
      _botDescTextController.text = _botDescTextController.text.trim();
      final decodeTokenState = await ref.read(accessTokenDecodeProvider.future);
      String? fullName;
      int? userId;
      if (decodeTokenState is DecodeTokenState) {
        userId = decodeTokenState.decodedToken.identity;
        fullName = decodeTokenState.decodedToken.userClaims.fullName;
      }

      if (_formKey.currentState!.validate() &&
          userId != null &&
          fullName != null) {
        BotEntity bot = BotEntity(
            userLlmId: _selectedUserLlm!.userLlmId,
            userLlmDescription: _selectedUserLlm!.userLlmDescription,
            llmName: _selectedUserLlm!.llmId,
            llmTypeName: _selectedUserLlm!.llmType,
            userLlmName: _selectedUserLlm!.userLlmName,
            botName: _botNameTextController.text,
            botDescription: checkIfEmpty(_botDescTextController.text),
            createdByUserId: userId,
            createdByName: fullName,
            datasourceId: _selectedDataSource?.datasourceId,
            canAddUsers: true,
            canChangeDatasource: true,
            canSeeDatasource: true,
            canSeeDatasourcefeed: true,
            canChangeDatasourcefeed: true,
            canSeeLlm: true,
            canChangeLlm: true);

        await ref.read(botProviderProvider.notifier).createBot(bot);
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    _userLlmDropdownItems = [];
    _datasourceDropdownItems = [];

    final botCreateState = ref.watch(botProviderProvider);
    if (botCreateState is BotCreateSuccessState) {
      AutoRouter.of(context).maybePopTop();
    }
    final userLlmListState = ref.watch(userLlmListProvider);
    if (userLlmListState is UserLlmListProviderStateSuccess) {
      for (UserLlmEntity userLlm in userLlmListState.userLlms) {
        _userLlmDropdownItems.add(DropdownMenuItem(
            value: userLlm,
            child: ListTile(
              title: Text(userLlm.userLlmName),
              subtitle: Text('${userLlm.llmId}-${userLlm.llmType}'),
            )));
      }
    }
    final dataSourceListState = ref.watch(datasourceListProvider);

    if (dataSourceListState is DatasourceListProviderStateSuccess) {
      for (DatasourceListEntity dataSource in dataSourceListState.datasources) {
        _datasourceDropdownItems.add(DropdownMenuItem(
          value: dataSource,
          child: Text(dataSource.datasourceName),
        ));
      }
    }

    return Scaffold(
      appBar: appBar(
          title: 'Create Bot',
          context: context,
          backButton: true,
          showLogoutAction: false),
      body: SingleChildScrollView(
        child: userLlmListState is UserLlmListProviderStateSuccess
            ? ConstrainedBox(
                constraints: const BoxConstraints(),
                child: userLlmListState.userLlms.isEmpty
                    ? Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const Text(
                                "There is no AI model available, please create a AI model first."),
                            const SizedBox(
                              height: 50,
                            ),
                            AppGradientButton(
                              buttonText: 'Create AI model',
                              onPressed: () {
                                AutoRouter.of(context)
                                    .push(const UserLlmCreateRoute());
                              },
                              buttonWidth: 200,
                            )
                          ],
                        ),
                      )
                    : Padding(
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
                                ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxWidth: 500),
                                  child: SearchChoices.single(
                                    validator: (llm) {
                                      if (llm == null) {
                                        return 'AI model is required';
                                      }
                                      return null;
                                    },
                                    items: _userLlmDropdownItems,
                                    value: _selectedUserLlm,
                                    hint: "Select AI model (Required)",
                                    searchHint: "Select AI model (Required)",
                                    onChanged: (UserLlmEntity? value) {
                                      setState(() {
                                        _selectedUserLlm = value;
                                      });
                                    },
                                    isExpanded: true,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AppTextFormField(
                                  hintText: _botNameHintText,
                                  controller: _botNameTextController,
                                  validator: textLengthValidator(
                                      hintText: _botNameHintText,
                                      minLength: 5,
                                      maxLength: 64),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                AppTextFormField(
                                  hintText: _botDescHintText,
                                  controller: _botDescTextController,
                                  validator: textLengthValidator(
                                      hintText: _botDescHintText,
                                      minLength: 0,
                                      maxLength: 1024),
                                  maxLines: null,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Add datasource',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium,
                                    ),
                                    Checkbox(
                                        value: _addDataSource,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _addDataSource = value;
                                          });
                                        }),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                if (_addDataSource == true)
                                  ConstrainedBox(
                                    constraints:
                                        const BoxConstraints(maxWidth: 500),
                                    child: SearchChoices.single(
                                      validator: (datasource) {
                                        if (datasource == null) {
                                          return 'Datasource is required';
                                        }
                                        return null;
                                      },
                                      items: _datasourceDropdownItems,
                                      value: _selectedDataSource,
                                      hint: "Select datasource (Required)",
                                      searchHint:
                                          "Select datasource (Required)",
                                      onChanged: (DatasourceListEntity? value) {
                                        setState(() {
                                          _selectedDataSource = value;
                                        });
                                      },
                                      isExpanded: true,
                                    ),
                                  ),
                                const SizedBox(
                                  height: 10,
                                ),
                                botCreateState is BotProviderStateLoading
                                    ? const CircularProgressIndicator()
                                    : AppGradientButton(
                                        buttonText: 'Create Bot',
                                        onPressed: _onPressed(),
                                      ),
                                if (botCreateState is BotCreateFailure)
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Theme.of(context).colorScheme.error,
                                      ),
                                      botCreateState.error.error,
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                              ],
                            ),
                          ),
                        ),
                      ),
              )
            : userLlmListState is UserLlmListProviderStateFailure
                ? Center(
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
                  ),
      ),
    );
  }
}
