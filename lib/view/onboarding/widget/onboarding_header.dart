import 'package:flutter/widgets.dart';

import '../../../utils/app_styles.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hi, r-u-o-k?",
          style: AppStyles.style64font700black(context),
        ),
        Text(
          "Made for everyone, to check on anyone.",
          style: AppStyles.style20font300Grey(context),
        ),
      ],
    );
  }
}
