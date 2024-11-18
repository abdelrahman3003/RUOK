import 'package:flutter/widgets.dart';

import '../../../utils/app_styles.dart';

class OnboarddingBottomText extends StatelessWidget {
  const OnboarddingBottomText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Choose your favorite color theme",
          style: AppStyles.style22font500black(context).copyWith(height: 1.5),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.8,
          child: Text(
              "Select one of the above color schemes that gives you the most peace.",
              textAlign: TextAlign.center,
              style: AppStyles.style16font300Grey(context)),
        ),
      ],
    );
  }
}
