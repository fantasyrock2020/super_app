import 'package:flutter/material.dart';

import 'features/weather/presentation/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFFF5F6F7),
        useMaterial3: true,
      ),
      home: const WeatherHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
