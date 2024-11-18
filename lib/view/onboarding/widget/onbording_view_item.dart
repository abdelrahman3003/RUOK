import 'package:flutter/material.dart';
import 'package:ruok/utils/app_colors.dart';

import '../../../utils/app_styles.dart';

class OnbordingViewItem extends StatelessWidget {
  const OnbordingViewItem(
      {super.key,
      required this.name,
      required this.linearGradient,
      required this.isActive,
      this.onTap});
  final String name;
  final LinearGradient linearGradient;
  final bool isActive;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          border: Border.all(
              width: 2,
              color: isActive ? AppColors.white : const Color(0xffC3B0FB)),
          borderRadius: BorderRadius.circular(18),
          gradient: linearGradient,
        ),
        child: Center(
          child: Text(
            name,
            style: AppStyles.style24font700white(context),
          ),
        ),
      ),
    );
  }
}
