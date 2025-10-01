/// Entry point aplikasi onboarding hafalan
import 'package:flutter/material.dart';
import 'screens/onboarding_screen.dart';

void main() => runApp(const OnboardingApp());

/// Widget utama aplikasi onboarding
class OnboardingApp extends StatelessWidget {
  const OnboardingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hafalan Onboarding',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF1A1A2E),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFFE94560),
          secondary: Color(0xFFF39C12),
        ),
        useMaterial3: true,
      ),
      home: const OnboardingScreen(),
    );
  }
}