import 'dart:io';

import 'package:flutter/foundation.dart';

class ConfigSingleton {
  static final ConfigSingleton _singleton = ConfigSingleton._internal();
  ConfigSingleton._internal();
  factory ConfigSingleton() {
    return _singleton;
  }

  static late String _apiBaseUrl;

  static late String _chatServiceBaseUrl;

  static late String _signUpUrl;
  static late String _loginUrl;
  static late String _googleSignInUrl;

  static late String _botListUrl;
  static late String _botCreateUrl;
  static late String _botDetailsUrl;
  static late String _botUpdateNameAndDescUrl;
  static late String _botUpdateDatasourceUrl;
  static late String _botAddUserUrl;
  static late String _botDeleteUrl;
  static late String _botRemoveDatasourceUrl;
  static late String _botRemoveUserUrl;
  static late String _botChangeLlmrUrl;

  static late String _userLlmListUrl;
  static late String _userLlmCreateUrl;
  static late String _userLlmDeleteUrl;
  static late String _userLlmUpdateUrl;
  static late String _userLlmDetailsUrl;

  static late String _dataSourceCreateUrl;
  static late String _dataSourceListUrl;
  static late String _dataSourceDetailsUrl;
  static late String _dataSourceUpdateDescUrl;
  static late String _dataSourceDeleteUrl;
  static late String _dataSourceAddFeedUrl;
  static late String _dataSourceDeleteFeedUrl;

  static late String _botChatUrl;
  static late String _playgroundChatUrl;
  static late String _botChatMessagesUrl;

  static late String _playgroundDatauploadUrl;

  static late String _refreshTokenUrl;

  static late String _publicLlmListUrl;
  static String _authServicePort = '';
  static String _botServicePort = '';
  static const String _apiServicePathPrefix = '/api';

  static String _dataUploadServicePort = '';
  static const String _datauploadServicePathPrefix = '/api/dataupload';

  static String _chatServicePort = '';

  static late String _androidGoogleSignInWebClientID;

  void setDevConfig() {
    _apiBaseUrl = 'http://localhost';
    _chatServiceBaseUrl = 'ws://localhost';
    if (!kIsWeb) {
      if (Platform.isAndroid) {
        _apiBaseUrl = 'http://10.0.2.2';
        _chatServiceBaseUrl = 'ws://10.0.2.2';
      }
    }
    _authServicePort = ':5001$_apiServicePathPrefix';

    _botServicePort = ':5001$_apiServicePathPrefix';

    _dataUploadServicePort = ':5001$_datauploadServicePathPrefix';

    _chatServicePort = ':5005';

    _androidGoogleSignInWebClientID =
        '526432072855-08g564n8r6j6ifv6pfp492jit7sctq7v.apps.googleusercontent.com';

    _setConfig();
  }

  void setProdConfig() {
    _apiBaseUrl = 'https://api.kernvind.com';
    _chatServiceBaseUrl = 'wss://api.kernvind.com';
    _authServicePort = _apiServicePathPrefix;

    _botServicePort = _apiServicePathPrefix;
    _androidGoogleSignInWebClientID =
        '450752284339-ulgvunhkpo3k392irbe4e7ovko4gc4j8.apps.googleusercontent.com';
    _chatServicePort = '';

    _dataUploadServicePort = _datauploadServicePathPrefix;
    _setConfig();
  }

  void _setConfig() {
    _signUpUrl = '$_apiBaseUrl$_authServicePort/auth/signup';
    _loginUrl = '$_apiBaseUrl$_authServicePort/auth/login';
    _googleSignInUrl = '$_apiBaseUrl$_authServicePort/auth/googlesignin';

    _botListUrl = '$_apiBaseUrl$_botServicePort/bot/list';
    _botCreateUrl = '$_apiBaseUrl$_botServicePort/bot/create';
    _botDetailsUrl = '$_apiBaseUrl$_botServicePort/bot/details';
    _botUpdateNameAndDescUrl = '$_apiBaseUrl$_botServicePort/bot/update';
    _botUpdateDatasourceUrl = '$_apiBaseUrl$_botServicePort/bot/datasource';
    _botAddUserUrl = '$_apiBaseUrl$_botServicePort/bot/adduser';
    _botDeleteUrl = '$_apiBaseUrl$_botServicePort/bot/delete';
    _botRemoveDatasourceUrl = '$_apiBaseUrl$_botServicePort/bot/datasource';
    _botRemoveUserUrl = '$_apiBaseUrl$_botServicePort/bot/user';
    _botChangeLlmrUrl = '$_apiBaseUrl$_botServicePort/bot/llm';
    _botChatMessagesUrl = '$_apiBaseUrl$_botServicePort/bot/messages';

    _userLlmListUrl = '$_apiBaseUrl$_botServicePort/userllm/list';
    _userLlmCreateUrl = '$_apiBaseUrl$_botServicePort/userllm/create';
    _userLlmUpdateUrl = '$_apiBaseUrl$_botServicePort/userllm/update';
    _userLlmDeleteUrl = '$_apiBaseUrl$_botServicePort/userllm/delete';
    _userLlmDetailsUrl = '$_apiBaseUrl$_botServicePort/userllm/details';

    _dataSourceCreateUrl = '$_apiBaseUrl$_botServicePort/datasource/create';
    _dataSourceListUrl = '$_apiBaseUrl$_botServicePort/datasource/list';
    _dataSourceDetailsUrl = '$_apiBaseUrl$_botServicePort/datasource';
    _dataSourceDeleteUrl = '$_apiBaseUrl$_botServicePort/datasource';
    _dataSourceUpdateDescUrl =
        '$_apiBaseUrl$_botServicePort/datasource/updatedesc';
    _dataSourceAddFeedUrl = '$_apiBaseUrl$_botServicePort/datasource/addfeed';
    _dataSourceDeleteFeedUrl =
        '$_apiBaseUrl$_botServicePort/datasource/deletefeed';

    _publicLlmListUrl = '$_apiBaseUrl$_botServicePort/publicllm/list';

    _refreshTokenUrl = '$_apiBaseUrl$_botServicePort/auth/refresh';

    _botChatUrl = '$_chatServiceBaseUrl$_chatServicePort/chat/ws/bot';
    _playgroundChatUrl =
        '$_chatServiceBaseUrl$_chatServicePort/chat/ws/playground';
    // _botChatMessagesUrl = '$_apiBaseUrl$_chatServicePort/chat/messages/bot'

    _playgroundDatauploadUrl = '$_apiBaseUrl$_dataUploadServicePort/playground';
  }

  String get signUpUrl => _signUpUrl;
  String get loginUrl => _loginUrl;
  String get googleSignInUrl => _googleSignInUrl;

  String get botListUrl => _botListUrl;
  String get botCreateUrl => _botCreateUrl;
  String get botDetailsUrl => _botDetailsUrl;
  String get botUpdateNameAndDescUrl => _botUpdateNameAndDescUrl;
  String get botUpdateDatasourceUrl => _botUpdateDatasourceUrl;
  String get botAddUserUrl => _botAddUserUrl;
  String get botDeleteUrl => _botDeleteUrl;
  String get botRemoveDatasourceUrl => _botRemoveDatasourceUrl;
  String get botRemoveUserUrl => _botRemoveUserUrl;
  String get botChangeLlmrUrl => _botChangeLlmrUrl;

  String get userLlmListUrl => _userLlmListUrl;
  String get userLlmCreateUrl => _userLlmCreateUrl;
  String get userLlmDeleteUrl => _userLlmDeleteUrl;
  String get userLlmUpdateUrl => _userLlmUpdateUrl;
  String get userLlmDetailsUrl => _userLlmDetailsUrl;

  String get dataSourceCreateUrl => _dataSourceCreateUrl;
  String get dataSourceListUrl => _dataSourceListUrl;
  String get dataSourceDetailsUrl => _dataSourceDetailsUrl;
  String get dataSourceUpdateDescUrl => _dataSourceUpdateDescUrl;
  String get dataSourceDeleteUrl => _dataSourceDeleteUrl;
  String get dataSourceAddFeedUrl => _dataSourceAddFeedUrl;
  String get dataSourceDeleteFeedUrl => _dataSourceDeleteFeedUrl;

  String get publicLlmListUrl => _publicLlmListUrl;

  String get refreshTokenUrl => _refreshTokenUrl;

  String get botChatUrl => _botChatUrl;
  String get playgroundChatUrl => _playgroundChatUrl;
  String get botChatMessagesUrl => _botChatMessagesUrl;

  String get playgroundDatauploadUrl => _playgroundDatauploadUrl;

  String get androidGoogleSignInWebClientID => _androidGoogleSignInWebClientID;
}
