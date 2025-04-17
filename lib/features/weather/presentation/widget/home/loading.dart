import 'package:flutter/material.dart';
import 'package:super_app/core/const/assets.dart';

class WeatherLoadingWidget extends StatefulWidget {
  const WeatherLoadingWidget({super.key});

  @override
  State<WeatherLoadingWidget> createState() => _WeatherLoadingWidgetState();
}

class _WeatherLoadingWidgetState extends State<WeatherLoadingWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(
          turns: Tween<double>(begin: 0, end: 1).animate(_controller),
          child: Image.asset(
            ImageAssets.icLoading,
            width: 96,
            height: 96,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
