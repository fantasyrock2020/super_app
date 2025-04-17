import 'package:flutter/material.dart';

class WeatherRow extends StatelessWidget {
  final String day;
  final String temp;

  const WeatherRow({super.key, required this.day, required this.temp});

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
            day,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF2A2A2A),
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            temp,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF2A2A2A),
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
