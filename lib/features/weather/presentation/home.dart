import 'package:flutter/material.dart';
import 'package:super_app/features/weather/presentation/widget/home/loading.dart';

import 'widget/home/item.dart';

class WeatherHomeScreen extends StatefulWidget {
  const WeatherHomeScreen({super.key});

  @override
  State<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState extends State<WeatherHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 56),
          const Text(
            '20°',
            style: TextStyle(
              fontSize: 96,
              color: Color(0xFF2A2A2A),
              fontWeight: FontWeight.w900,
            ),
          ),
          const Text(
            'Bangalore',
            style: TextStyle(
              fontSize: 36,
              color: Color(0xFF556799),
              fontWeight: FontWeight.w100,
            ),
          ),
          const SizedBox(height: 62),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .05),
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  WeatherRow(day: 'Tuesday', temp: '24°C'),
                  WeatherRow(day: 'Wednesday', temp: '21°C'),
                  WeatherRow(day: 'Thursday', temp: '28°C'),
                  WeatherRow(day: 'Friday', temp: '26°C'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
