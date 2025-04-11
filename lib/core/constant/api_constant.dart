class ApiConstants {
  // static const String apiBaseUrl = "https://vcare.integration25.com/api/";
// const String url = 'http://92.168.0.1:8000/api/';
 static const String apiBaseUrl = 'http://10.0.2.2:8000/api/';
  // static const String apiBaseUrl = 'http://192.168.0.165:8000/api/';
  static const String pharmacyUrl = "${apiBaseUrl}pharmacy/";
// const String url = 'http://192.168.43.29:8000/api/';
// const String url = 'http://192.168.0.165/api/';
// const String url = 'http://localhost:8000/api/';
// const String url = 'http://127.0.0.1:8000/api/';
// const String url = 'http://0.0.0.0:8000/api/';
// const String url = 'https://3007-176-123-24-215.ngrok-free.app/api/';

//  php artisan serve --host 192.168.1.11
  static const String login = "auth/login";
  static const String signup = "auth/register";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}
