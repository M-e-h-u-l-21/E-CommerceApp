import "package:e_commerce/utils/constants/colors.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        //First Name , Last Name
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.firstName,
                    labelStyle: TextStyle(color: TColors.darkGrey),
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(
              width: TSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: InputDecoration(
                    labelText: TTexts.lastName,
                    labelStyle: TextStyle(color: TColors.darkGrey),
                    prefixIcon: Icon(Iconsax.user)),
              ),
            )
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        // Username
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelStyle: TextStyle(color: TColors.darkGrey),
              labelText: TTexts.username),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //Email
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelStyle: TextStyle(color: TColors.darkGrey),
              labelText: TTexts.email),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //Phone number
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: TTexts.phoneNo,
            labelStyle: TextStyle(color: TColors.darkGrey),
          ),
        ),
        const SizedBox(
          height: TSizes.spaceBtwInputFields,
        ),

        //Password
        TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              labelStyle: TextStyle(color: TColors.darkGrey),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
      ],
    ));
  }
}
