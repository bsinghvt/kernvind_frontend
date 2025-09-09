import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_token_parse/jwt_token_parse.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_llm_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_chat_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/domain/entities/user_llm_entity.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider.dart';
import 'package:kernvind/features/authenticated_user/shared/user_llm/presentation/providers/user_llm_list_provider_state.dart';
import 'package:search_choices/search_choices.dart';

class BotLlmChangeWidget extends ConsumerStatefulWidget {
  final BotEntity bot;
  const BotLlmChangeWidget({super.key, required this.bot});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BotLlmChangeWidgetState();
}

class _BotLlmChangeWidgetState extends ConsumerState<BotLlmChangeWidget> {
  final _formKey = GlobalKey<FormState>();
  UserLlmEntity? _selectedUserLlm;
  List<DropdownMenuItem<UserLlmEntity>> _userLlmDropdownItems = [];
  VoidCallback _onPressed() {
    final bot = widget.bot;

    return () async {
      if (_selectedUserLlm == null) {
        return;
      }
      final decodeTokenState = await ref.read(accessTokenDecodeProvider.future);
      // String? fullName;
      int? userId;
      if (decodeTokenState is DecodeTokenState) {
        userId = decodeTokenState.decodedToken.identity;
        //   fullName = decodeTokenState.decodedToken.userClaims.fullName;
      }
      if (_formKey.currentState!
              .validate() //&& _selectedUserLlm!.llmType != bot.llmTypeName &&
          // _selectedUserLlm!.llmId != bot.llmName
          ) {
        final botLlmChange = BotLlmChangeEntity(
            botId: bot.botId!, userLlmId: _selectedUserLlm!.userLlmId!);
        await ref
            .read(botDetailsEditProvider.notifier)
            .botChangeLlm(botLlmChange: botLlmChange);

        await ref
            .read(botChatMessageProvider(botId: widget.bot.botId!).notifier)
            .sendMessage(BotChatEntity(
                messageText:
                    'Llm is changed to: ${_selectedUserLlm!.llmType}-${_selectedUserLlm!.userLlmName}',
                botId: widget.bot.botId!,
                notification: true,
                userIdIn: userId!));
        ref.invalidate(botChatMessageProvider);
        final updateState = ref.read(botDetailsEditProvider);
        if (updateState is BotDetailsEditStateSuccess) {
          ref
              .read(botLlmChangeEditModeProvider.notifier)
              .setBotLLmChangeEditMode(false);
        }
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final updateState = ref.watch(botDetailsEditProvider);
    _userLlmDropdownItems = [];
    final bot = widget.bot;
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
    return Form(
      key: _formKey,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            if (bot.userLlmId != null) Text('Current LLM: ${bot.llmName!}'),
            SearchChoices.single(
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
                        .read(botLlmChangeEditModeProvider.notifier)
                        .setBotLLmChangeEditMode(false);
                  },
                ),
                const SizedBox(height: 100),
              ],
            ),
            if (updateState is BotLlmChangeStateFailure)
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
              ),
          ],
        ),
      ),
    );
  }
}
