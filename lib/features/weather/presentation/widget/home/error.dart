import 'package:flutter/material.dart';

class WeatherErrorWidget extends StatelessWidget {
  final VoidCallback onRetry;

  const WeatherErrorWidget({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE85959),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 44,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Something\nwent wrong\nat our end!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 54,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 4,
                  wordSpacing: 4,
                ),
              ),
              ElevatedButton(
                onPressed: onRetry,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4A4A4A),
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2),
                  ),
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                  ),
                ),
                child: const Text('RETRY'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
