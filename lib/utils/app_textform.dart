import 'package:flutter/material.dart';
import 'package:ruok/utils/app_colors.dart';

import 'app_styles.dart';

class AppTextform extends StatelessWidget {
  const AppTextform({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hint,
          hintStyle: AppStyles.style18font300Grey(context),
          filled: true,
          fillColor: const Color(0x59FFFFFF),
          border: buildBorder(),
          enabledBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(
            width: 5, // تعيين سماكة الحدود إلى 2
            color: AppColors.white));
  }
}
