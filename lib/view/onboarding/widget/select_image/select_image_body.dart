import 'package:flutter/material.dart';
import 'package:ruok/gen/assets.gen.dart';
import 'package:ruok/view/onboarding/widget/select_image/image_item.dart';

import '../select_color/onboardding_bottom_text.dart';

class SelectImageBody extends StatelessWidget {
  const SelectImageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 24, mainAxisSpacing: 24),
            itemBuilder: (context, index) => ImageItem(
                  image: Assets.images.a1.path,
                )),
        const SizedBox(height: 44),
        const OnboarddingBottomText(
          title: "Choose your favorite color theme",
          subTitle:
              "Select one of the above color schemes that gives you the most peace.",
        )
      ],
    );
  }
}
