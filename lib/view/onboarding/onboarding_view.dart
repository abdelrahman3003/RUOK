import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ruok/utils/app_button.dart';
import 'package:ruok/view/onboarding/widget/dot_list.dart';
import 'package:ruok/view/onboarding/widget/login/login_view.dart';
import 'package:ruok/view/onboarding/widget/onboarding_header.dart';

import '../../model/onboarding_item_model.dart';
import '../../utils/app_colors.dart';
import 'widget/select_color/select_color_body.dart';
import 'widget/select_image/select_image_body.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

List<OnboardingItemModel> onboardingItemModelList = [
  OnboardingItemModel(
    name: "Lavender",
    linearGradient: AppColors.lavenderGradient,
    buttonVColor: const Color(0xff3963F5),
  ),
  OnboardingItemModel(
      name: "Rose",
      linearGradient: AppColors.roseGradient,
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
];
int? backgroundindex;
int? pageViewindex;
List<Widget> onboardingPageviewList = [
  SelectColorBody(onboardingItemModelList: onboardingItemModelList),
  const SelectImageBody(),
  const LoginView(),
];

class _OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: backgroundindex == null
                ? null
                : onboardingItemModelList[backgroundindex!].linearGradient),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 32),
                const OnboardingHeader(),
                const SizedBox(height: 41),
                AspectRatio(
                  aspectRatio: .6,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      pageViewindex = value;
                      setState(() {});
                    },
                    itemCount: onboardingPageviewList.length,
                    itemBuilder: (context, index) =>
                        onboardingPageviewList[index],
                  ),
                ),
                const SizedBox(height: 40),
                DotList(indexIsActive: pageViewindex ?? 0),
                const SizedBox(height: 15),
                SizedBox(
                    width: double.infinity,
                    child: AppButton(
                      title: "Let’s Go",
                      color: pageViewindex == null
                          ? AppColors.black
                          : onboardingItemModelList[pageViewindex!]
                              .buttonVColor,
                    )),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
