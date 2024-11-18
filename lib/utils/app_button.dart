import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.title, this.color});
  final String title;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            shape: WidgetStatePropertyAll(
              RoundedRectangleBorder(
                side: BorderSide(width: 2, color: AppColors.white),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(vertical: 20)),
            backgroundColor: WidgetStatePropertyAll(color ?? AppColors.black)),
        child: Text(title, style: AppStyles.style24font500white(context)));
  }
}
