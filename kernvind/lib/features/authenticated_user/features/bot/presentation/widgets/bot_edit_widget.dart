import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/validators/auth_field_validators.dart';
import 'package:kernvind/core/widgets/app_text_form_field.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_update_name_desc_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_edit_mode_provider.dart';

class BotEditWidget extends ConsumerStatefulWidget {
  final BotEntity bot;
  const BotEditWidget({required this.bot, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BotEditWidgetState();
}

class _BotEditWidgetState extends ConsumerState<BotEditWidget> {
  final _formKey = GlobalKey<FormState>();
  final _botNameTextController = TextEditingController();
  final _botDescTextController = TextEditingController();
  final _botNameHintText = 'Bot Name (Required)';
  final _botDescHintText = 'Bot Description (Optional)';

  VoidCallback _onPressed() {
    String? checkIfEmpty(String text) {
      return text.trim().isEmpty ? null : text;
    }

    void trimText(TextEditingController textEditingController) {
      textEditingController.text = textEditingController.text.trim();
    }

    return () async {
      trimText(_botNameTextController);
      trimText(_botDescTextController);
      final botDesc = checkIfEmpty(_botDescTextController.text);
      final botName = checkIfEmpty(_botNameTextController.text);

      if (_formKey.currentState!.validate() && botName != null) {
        if (botDesc == widget.bot.botDescription &&
            botName == widget.bot.botName) {
          return;
        }
        await ref.read(botDetailsEditProvider.notifier).updateBotNameAndDesc(
            bot: BotUpdateNameDescEntity(
                botId: widget.bot.botId!,
                botName: botName,
                botDescription: botDesc));
        final updateState = ref.read(botDetailsEditProvider);
        if (updateState is BotDetailsEditStateSuccess) {
          ref.read(botEditProvider.notifier).setBotEditMode(false);
        }
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final updateState = ref.watch(botDetailsEditProvider);
    final bot = widget.bot;
    if (bot.botDescription != null) {
      _botDescTextController.text = bot.botDescription!;
    }
    _botNameTextController.text = bot.botName;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Form(
          key: _formKey,
          child: Column(children: [
            AppTextFormField(
              labelText: 'Bot name',
              hintText: _botNameHintText,
              controller: _botNameTextController,
              validator: textLengthValidator(
                  hintText: _botNameHintText, minLength: 5, maxLength: 64),
            ),
            const SizedBox(
              height: 10,
            ),
            AppTextFormField(
              labelText: 'Bot description',
              hintText: _botDescHintText,
              controller: _botDescTextController,
              validator: textLengthValidator(
                  hintText: _botDescHintText, minLength: 0, maxLength: 1024),
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
                    ref.read(botEditProvider.notifier).setBotEditMode(false);
                  },
                ),
                const SizedBox(width: 8),
              ],
            ),
            if (updateState is BotDetailsNameAndDescEditStateFailure)
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
