import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'service_locator.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() => getIt.init();

Future<void> setupLocator() async {
  configureInjection();
}
