import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sphere_book/core/utils/api_services.dart';
import 'package:sphere_book/features/auth/data/repos/auth_repo_impl.dart';
import 'package:sphere_book/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServerLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(getIt.get<ApiServices>()));
  getIt.registerSingleton<AuthRepoImpl>(AuthRepoImpl(getIt.get<ApiServices>()));
}