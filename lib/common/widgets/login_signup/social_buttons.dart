import "package:e_commerce/utils/constants/colors.dart";
import "package:e_commerce/utils/constants/image_strings.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:flutter/material.dart";

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage(
                  TImages.google,
                ),
                width: TSizes.iconMd,
                height: TSizes.iconMd,
              )),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: TColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: () {},
              icon: Image(
                image: AssetImage(
                  TImages.facebook,
                ),
                width: TSizes.iconMd,
                height: TSizes.iconMd,
              )),
        ),
      ],
    );
  }
}