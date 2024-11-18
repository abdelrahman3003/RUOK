import 'package:flutter/widgets.dart';

import '../../../model/onboarding_item_model.dart';
import 'onbording_view_item.dart';

class OnboardingItemListView extends StatefulWidget {
  const OnboardingItemListView(
      {super.key, required this.onboardingItemModelList});
  final List<OnboardingItemModel> onboardingItemModelList;

  @override
  State<OnboardingItemListView> createState() => _OnboardingItemListViewState();
}

int activeIndex = 0;

class _OnboardingItemListViewState extends State<OnboardingItemListView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
                widget.onboardingItemModelList[index].linearGradient));
  }
}
