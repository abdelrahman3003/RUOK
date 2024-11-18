import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ruok/utils/app_colors.dart';
import 'package:ruok/utils/app_styles.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 32),
            Text(
              "Hi, r-u-o-k?",
              style: AppStyles.style64font700black(context),
            ),
            Text(
              "Made for everyone, to check on anyone.",
              style: AppStyles.style20font300black(context),
            )
          ],
        ),
      ),
    );
  }
}
