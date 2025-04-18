import 'package:flutter/material.dart';
import '../../../../../core/extensions/extensions.dart';

import '../../../data/model/model.dart';

class WeatherRow extends StatelessWidget {
  final Forecast forecast;

  const WeatherRow({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: Colors.grey.shade300,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            forecast.dt.millisecondToDateTime().toWeekday(),
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF2A2A2A),
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
          Text(
            '${forecast.main.temp.kelvinToCelsius()}°C',
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF2A2A2A),
              fontWeight: FontWeight.w400,
              height: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
