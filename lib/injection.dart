import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

GetIt getIt = GetIt.I;

@injectableInit
Future<void> configurInjection(String env) async {
  await $initGetIt(getIt, environment: env);
}
