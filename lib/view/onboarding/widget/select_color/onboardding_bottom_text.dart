import 'package:flutter/widgets.dart';

import '../../../../utils/app_styles.dart';

class OnboarddingBottomText extends StatelessWidget {
  const OnboarddingBottomText(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.style22font500black(context).copyWith(height: 1.5),
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.6,
          child: Text(subTitle,
              textAlign: TextAlign.center,
              style: AppStyles.style16font300Grey(context)),
        ),
      ],
    );
  }
}
