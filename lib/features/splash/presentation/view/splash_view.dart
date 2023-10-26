import 'dart:async';
import 'package:cine_reserve_app/features/splash/presentation/widgets/body_splash_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 3300), () {});
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
