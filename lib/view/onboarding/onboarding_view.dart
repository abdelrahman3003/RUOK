import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ruok/utils/app_button.dart';
import 'package:ruok/view/onboarding/widget/dot_list.dart';
import 'package:ruok/view/onboarding/widget/onboardding_bottom_text.dart';
import 'package:ruok/view/onboarding/widget/onboarding_header.dart';

import '../../model/onboarding_item_model.dart';
import '../../utils/app_colors.dart';
import 'widget/onboarding_item_list._view.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

List<OnboardingItemModel> onboardingItemModelList = [
  OnboardingItemModel(
    name: "Lavender",
    linearGradient: AppColors.roseGradient,
    buttonVColor: const Color(0xff3963F5),
  ),
  OnboardingItemModel(
      name: "Rose",
      linearGradient: AppColors.lavenderGradient,
      buttonVColor: const Color(0xffFB3B96)),
  OnboardingItemModel(
      name: "Nature",
      linearGradient: AppColors.natureGradient,
      buttonVColor: const Color(0xff9072EE)),
  OnboardingItemModel(
      name: "Sunset",
      linearGradient: AppColors.sunsetGradient,
      buttonVColor: const Color(0xffFF5D4E)),
  OnboardingItemModel(
      name: "Ocean",
      linearGradient: AppColors.oceanGradient,
      buttonVColor: const Color(0xffFB3B96)),
  OnboardingItemModel(
      name: "Clouds",
      linearGradient: AppColors.cloudGradient,
      buttonVColor: const Color(0xffFB3B96)),
  OnboardingItemModel(
      name: "Clouds",
      linearGradient: AppColors.cloudGradient,
      buttonVColor: const Color(0xff9072EE)),
];
int? indexActive;

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: indexActive == null
                ? null
                : onboardingItemModelList[indexActive!].linearGradient),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                const OnboardingHeader(),
                const SizedBox(height: 41),
                OnboardingItemListView(
                  onboardingItemModelList: onboardingItemModelList,
                ),
                const SizedBox(height: 40),
                const OnboarddingBottomText(),
                const SizedBox(height: 21),
                const DotList(indexIsActive: 0),
                const SizedBox(height: 21),
                SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      title: "Let’s Go",
                      color: indexActive == null
                          ? AppColors.black
                          : onboardingItemModelList[indexActive!].buttonVColor,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
