import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/features/splash/presentation/widget/splash_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _determineStartRoute();
  }

  Future<void> _determineStartRoute() async {
    // Simulate some initialization logic (e.g., checking login status)
    await Future.delayed(const Duration(seconds: 4));
    if (mounted) {
      context.go(AppRouteConstants.toggle);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}


