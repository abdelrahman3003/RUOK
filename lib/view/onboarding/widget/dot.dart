import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ruok/utils/app_colors.dart';

class Dot extends StatelessWidget {
  const Dot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isActive ? AppColors.black : Colors.grey,
        ));
  }
}
