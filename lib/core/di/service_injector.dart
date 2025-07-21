import 'package:dio/dio.dart';
import 'package:flutter_chat_app/core/auth/bloc/auth_bloc.dart';
import 'package:flutter_chat_app/core/di/service_locator.dart';
import 'package:flutter_chat_app/core/navigation/app_router.dart';
import 'package:flutter_chat_app/core/network/dio_factory.dart';
import 'package:flutter_chat_app/features/auth/auth_injections.dart';

void initServiceLocator() {
  serviceLocator.registerLazySingleton<Dio>(() => DioFactory().getDio());

  _initDataSources();
  _initRepositories();
  _initUseCases();
  _initBlocs();
  _initServices();

  _initAppRouter();
}

void _initDataSources() {
  injectAuthRemoteDataSources();
}

void _initRepositories() {
  injectAuthRepositories();
}

void _initUseCases() {
  injectAuthUseCases();
}

void _initBlocs() {
  injectAuthBlocs();
}

void _initServices() {}

void _initAppRouter() {
  serviceLocator.registerLazySingleton<AppRouter>(
      () => AppRouter(serviceLocator.get<AuthBloc>()));
}
