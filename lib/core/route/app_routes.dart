import 'package:go_router/go_router.dart';

import '../../features/feature.dart';
import 'app_pages.dart';

final GoRouter router = GoRouter(
  initialLocation: AppPages.weatherHome,
  routes: [
    GoRoute(
      path: AppPages.weatherHome,
      builder: (context, state) => const WeatherHomeScreen(),
    ),
  ],
);
