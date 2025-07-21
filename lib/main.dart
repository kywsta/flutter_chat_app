import 'package:flutter/material.dart';
import 'package:flutter_chat_app/app.dart';
import 'package:flutter_chat_app/core/di/service_injector.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await dotenv.load(fileName: ".env");

  await initHiveForFlutter();

  initServiceLocator();

  runApp(const App());
}
