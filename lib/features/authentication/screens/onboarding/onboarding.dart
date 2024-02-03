import 'package:e_commerce/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_dotnavigation.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import "package:e_commerce/utils/constants/image_strings.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    //Once we initialize it here then we don't have to initialize it again and again, we can just simply use its instance

    return Scaffold(
      body: Stack(
        // Inside stack , widgets are placed with the help of positioned widget
        children: [
          //Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          //Skip Button
          OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          //Circular Button
          OnBoardingNextButton(),
        ],
      ),
    );
  }
}
