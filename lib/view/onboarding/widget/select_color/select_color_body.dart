import 'package:flutter/material.dart';

import '../../../../model/onboarding_item_model.dart';
import '../onboardding_bottom_text.dart';
import 'onbording_view_item.dart';

class SelectColorBody extends StatefulWidget {
  const SelectColorBody({super.key, required this.onboardingItemModelList});
  final List<OnboardingItemModel> onboardingItemModelList;

  @override
  State<SelectColorBody> createState() => _SelectImageBodyState();
}

int activeIndex = 0;

class _SelectImageBodyState extends State<SelectColorBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
            itemCount: 6,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.5,
                crossAxisSpacing: 30,
                mainAxisSpacing: 28),
            itemBuilder: (context, index) => OnbordingViewItem(
                onTap: () {
                  setState(() {
                    activeIndex = index;
                  });
                },
                isActive: index == activeIndex,
                name: widget.onboardingItemModelList[index].name,
                linearGradient:
                    widget.onboardingItemModelList[index].linearGradient)),
        const SizedBox(height: 40),
        const OnboarddingBottomText(
          title: "Choose your favorite color theme",
          subTitle:
              "Select one of the above color schemes that gives you the most peace.",
        )
      ],
    );
  }
}
