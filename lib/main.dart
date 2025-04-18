import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/config/service_locator.dart';
import 'my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.black,
  ));
  await configureInjection();
  runApp(const MyApp());
}
