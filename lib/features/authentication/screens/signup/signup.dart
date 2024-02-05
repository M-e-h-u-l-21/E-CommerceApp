import "package:e_commerce/common/widgets/login_signup/form_divider.dart";
import "package:e_commerce/common/widgets/login_signup/social_buttons.dart";
import "package:e_commerce/features/authentication/screens/signup/verify_email.dart";
import "package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart";
import "package:e_commerce/features/authentication/screens/signup/widgets/terms_and_conditions.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Form
              SignUpForm(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Privacy Policies
              // TermsAndCondition(),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => VerifyEmail()),
                  child: Text(TTexts.createAccount),
                ),
              ), //Button

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Divider
              FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              //Social Icons
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
