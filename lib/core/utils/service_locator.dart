import 'package:depi_hapd/Features/Authentication/data/rebo/register_rebo.dart';
import 'package:depi_hapd/Features/Authentication/data/rebo/register_rebo_impl.dart';
import 'package:depi_hapd/core/utils/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<RegisterRebo>(
      RegisterReboImpl(getIt.get<ApiService>()));
}
