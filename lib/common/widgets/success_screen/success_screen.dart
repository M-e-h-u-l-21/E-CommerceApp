import "package:e_commerce/features/authentication/screens/login/login.dart";
import "package:e_commerce/utils/constants/image_strings.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed})
      : super(key: key);

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.appBarHeight),
        child: Column(
          children: [
            Image(
              image: AssetImage(image),
              width: THelperFunctions.screenWidth() * 0.6,
            ),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            // Title and Subtitle
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: const Text(TTexts.tContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
