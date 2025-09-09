class ConstantsSingleton {
  static final ConstantsSingleton _singleton = ConstantsSingleton._internal();
  ConstantsSingleton._internal();
  factory ConstantsSingleton() {
    return _singleton;
  }

  static const String _openAI = 'OpenAI';
  static const String _ollama = 'Ollama';

  static const String _isGoogleSignInKey = 'is_google_sign_in';
  static const String _isGoogleSignInValue = 'y';

  static const String _tokenStorageKey = 'jwt_token';
  static const String _refreshTokenStorageKey = 'refresh_jwt_token';

  String get openAI => _openAI;
  String get ollama => _ollama;

  String get isGoogleSignInKey => _isGoogleSignInKey;
  String get isGoogleSignInValue => _isGoogleSignInValue;

  String get tokenStorageKey => _tokenStorageKey;
  String get refreshTokenStorageKey => _refreshTokenStorageKey;
}
