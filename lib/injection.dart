import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:we_pay/injection.config.dart';

GetIt getIt = GetIt.I;

@injectableInit
void configurInjection(String env) {
  $initGetIt(getIt, environment: env);
}
