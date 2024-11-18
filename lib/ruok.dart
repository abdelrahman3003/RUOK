import 'package:flutter/material.dart';
import 'package:ruok/view/onboarding/onboarding_view.dart';

class Ruok extends StatelessWidget {
  const Ruok({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingView(),
    );
  }
}
