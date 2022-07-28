import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/injection.config.dart';

GetIt getIt = GetIt.I;

@injectableInit
Future<void> configurInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}
