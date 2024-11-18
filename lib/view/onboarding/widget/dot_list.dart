import 'package:flutter/widgets.dart';
import 'package:ruok/utils/app_colors.dart';

import 'dot.dart';

class DotList extends StatelessWidget {
  const DotList({super.key, required this.indexIsActive});
  final int indexIsActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.grey),
          borderRadius: BorderRadius.circular(11)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          3,
          (i) => Padding(
            padding: EdgeInsets.only(right: i == 2 ? 0 : 8),
            child: Dot(isActive: indexIsActive == i),
          ),
        ),
      ),
    );
  }
}
