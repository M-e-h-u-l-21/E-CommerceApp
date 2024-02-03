import "package:e_commerce/features/authentication/screens/signup/signup.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:iconsax/iconsax.dart";

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        children: [
          //Email
          TextFormField(
              decoration: InputDecoration(
            labelText: TTexts.email,
            prefixIcon: Icon(Iconsax.direct_right),
          )),

          SizedBox(
            height: TSizes.spaceBtwInputFields / 2,
          ),

          //Password
          TextFormField(
            decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),

          const SizedBox(height: TSizes.spaceBtwInputFields / 2),

          //Remember Me and Forget Me
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value) {}),
                  const Text(TTexts.rememberMe)
                ],
              ),

              //Forgot Password
              TextButton(
                  onPressed: () {}, child: const Text(TTexts.forgetPassword)),

              // Sign in buttons
            ],
          ),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text(TTexts.signIn)),
          ),

          const SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          //Create account button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => Get.to(() => const Signup()),
                child: Text(TTexts.createAccount)),
          ),
        ],
      ),
    ));
  }
}