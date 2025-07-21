import 'package:dio/dio.dart';
import 'package:flutter_chat_app/core/auth/bloc/auth_bloc.dart';
import 'package:flutter_chat_app/core/auth/repositories/auth_repository.dart';
import 'package:flutter_chat_app/core/auth/use_cases/get_auth_state_stream_use_case.dart';
import 'package:flutter_chat_app/core/auth/use_cases/login_use_case.dart';
import 'package:flutter_chat_app/core/auth/use_cases/logout_use_case.dart';
import 'package:flutter_chat_app/core/di/service_locator.dart';
import 'package:flutter_chat_app/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:flutter_chat_app/features/auth/data/repositories/auth_repository_impl.dart';

void injectAuthRemoteDataSources() {
  serviceLocator.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(dio: serviceLocator<Dio>()),
  );
}

void injectAuthRepositories() {
  serviceLocator.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      dataSource: serviceLocator<AuthRemoteDataSource>(),
    ),
  );
}

void injectAuthUseCases() {
  serviceLocator.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(repository: serviceLocator<AuthRepository>()),
  );

  serviceLocator.registerLazySingleton<GetAuthStateStreamUseCase>(
    () =>
        GetAuthStateStreamUseCase(repository: serviceLocator<AuthRepository>()),
  );

  serviceLocator.registerLazySingleton<LogoutUseCase>(
    () => LogoutUseCase(repository: serviceLocator<AuthRepository>()),
  );
}

void injectAuthBlocs() {
  serviceLocator.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      getAuthStateStreamUseCase: serviceLocator<GetAuthStateStreamUseCase>(),
      logoutUseCase: serviceLocator<LogoutUseCase>(),
    )..add(AuthSubscriptionRequested()),
  );
}
