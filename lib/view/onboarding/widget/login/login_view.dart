import 'package:flutter/material.dart';
import 'package:ruok/utils/app_textform.dart';
import 'package:ruok/view/onboarding/widget/onboardding_bottom_text.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AppTextform(hint: "Type Your Username Here"),
        const SizedBox(height: 40),
        const AppTextform(hint: "Type Your Password Here"),
        SizedBox(height: MediaQuery.sizeOf(context).height / 6),
        const OnboarddingBottomText(
            title: "Choose your account details",
            subTitle:
                "This will allow your friends and loved ones to add you easily, and quickly."),
      ],
    );
  }
}
