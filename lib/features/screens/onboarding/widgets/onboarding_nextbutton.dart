import "package:e_commerce/features/controllers.onboarding/onboarding_controller.dart";
import "package:e_commerce/utils/constants/colors.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/device/device_utility.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TSizes.defaultSpace,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                backgroundColor: dark ? TColors.primary : TColors.dark),
            onPressed: () {
              OnboardingController.instance.nextPage();
            },
            child: Icon(Iconsax.arrow_right_14)));
  }
}
