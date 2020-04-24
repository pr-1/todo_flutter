
abstract class AppEnvironment {
  static String headerKey;

  static String baseApiUrl;

  static setupEnv(Environment env) {
    switch (env) {
      case Environment.dev:
        {
          headerKey = 'Authorization';
          baseApiUrl = 'https://9dd6a413.ngrok.io/api';

          break;
        }
      case Environment.prod:
        {
          headerKey = 'Authorization';
          baseApiUrl = 'https://api.garageonsite.in/api';
          break;
        }
    }
  }
}

enum Environment { dev, prod }
