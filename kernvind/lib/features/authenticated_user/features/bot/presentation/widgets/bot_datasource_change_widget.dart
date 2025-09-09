import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kernvind/core/providers/jwt_token_parse/jwt_token_parse.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_chat_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_datasource_change_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/domain/entities/bot_entity.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_chat_provider.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_details_edit_state.dart';
import 'package:kernvind/features/authenticated_user/features/bot/presentation/providers/bot_edit_mode_provider.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/domain/entities/datasource_entity.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list.dart';
import 'package:kernvind/features/authenticated_user/features/datasource_feature/presentation/providers/datasource_list_provider/datasource_list_provider_state.dart';
import 'package:search_choices/search_choices.dart';

class BotDatasourceChangeWidget extends ConsumerStatefulWidget {
  final BotEntity bot;
  const BotDatasourceChangeWidget({required this.bot, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BotDatasourceChangeWidgetState();
}

class _BotDatasourceChangeWidgetState
    extends ConsumerState<BotDatasourceChangeWidget> {
  final _formKey = GlobalKey<FormState>();
  DatasourceListEntity? _selectedDataSource;
  List<DropdownMenuItem<DatasourceListEntity>> _datasourceDropdownItems = [];
  VoidCallback _onPressed() {
    final bot = widget.bot;

    return () async {
      if (_selectedDataSource == null) {
        return;
      }
      final decodeTokenState = await ref.read(accessTokenDecodeProvider.future);
      // String? fullName;
      int? userId;
      if (decodeTokenState is DecodeTokenState) {
        userId = decodeTokenState.decodedToken.identity;
        //   fullName = decodeTokenState.decodedToken.userClaims.fullName;
      }
      if (_formKey.currentState!.validate() &&
          _selectedDataSource!.datasourceName != bot.datasourceName) {
        await ref.read(botDetailsEditProvider.notifier).changeOrAddDatasource(
                bot: BotDatasourceChangeEntity(
              botId: bot.botId!,
              datasourceId: _selectedDataSource!.datasourceId,
            ));

        await ref
            .read(botChatMessageProvider(botId: widget.bot.botId!).notifier)
            .sendMessage(BotChatEntity(
                messageText:
                    'Datasource change to: ${_selectedDataSource!.datasourceName}',
                botId: widget.bot.botId!,
                notification: true,
                userIdIn: userId!));
        ref.invalidate(botChatMessageProvider);
        final updateState = ref.read(botDetailsEditProvider);
        if (updateState is BotDetailsEditStateSuccess) {
          ref
              .read(botChangeDatasourceProvider.notifier)
              .setDatasourceEditMode(false);
        }
      }
    };
  }

  @override
  Widget build(BuildContext context) {
    final updateState = ref.watch(botDetailsEditProvider);
    _datasourceDropdownItems = [];
    final bot = widget.bot;
    final dataSourceListState = ref.watch(datasourceListProvider);

    if (dataSourceListState is DatasourceListProviderStateSuccess) {
      for (DatasourceListEntity dataSource in dataSourceListState.datasources) {
        _datasourceDropdownItems.add(DropdownMenuItem(
          value: dataSource,
          child: Text(dataSource.datasourceName),
        ));
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
            if (bot.datasourceId != null)
              Text('Current datasource: ${bot.datasourceName!}'),
            SearchChoices.single(
              validator: (datasource) {
                if (datasource == null) {
                  return 'Datasource is required';
                }
                return null;
              },
              items: _datasourceDropdownItems,
              value: _selectedDataSource,
              hint: "Select datasource (Required)",
              searchHint: "Select datasource (Required)",
              onChanged: (DatasourceListEntity? value) {
                setState(() {
                  _selectedDataSource = value;
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
                        .read(botChangeDatasourceProvider.notifier)
                        .setDatasourceEditMode(false);
                  },
                ),
                const SizedBox(height: 100),
              ],
            ),
            if (updateState is BotDetailsDatasourceAddEditStateFailure)
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
