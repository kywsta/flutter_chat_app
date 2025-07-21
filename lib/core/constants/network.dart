import 'package:flutter_dotenv/flutter_dotenv.dart';

class NetworkConstants {
  static const String _http = 'http://';
  static final String _base = dotenv.env['SERVER_ADDRESS']!;
  static final String baseUrl = '$_http$_base';
  static final String authApi = '$baseUrl/auth';

  static const String _ws = 'ws://';
  static final String baseWsUrl = '$_ws$_base';
  static final String graphqlEndpoint = '$baseUrl/graphql';
  static final String graphqlSubscriptionEndpoint = '$baseWsUrl/graphql';

  static final String login = '$authApi/login';
}
