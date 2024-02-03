import "package:e_commerce/common/styles/spacing_styles.dart";
import "package:e_commerce/common/widgets/login_signup/form_divider.dart";
import "package:e_commerce/common/widgets/login_signup/social_buttons.dart";
import "package:e_commerce/features/authentication/screens/login/widgets/login_form.dart";
import "package:e_commerce/features/authentication/screens/login/widgets/login_header.dart";
import "package:e_commerce/utils/constants/sizes.dart";
import "package:e_commerce/utils/constants/text_strings.dart";
import "package:e_commerce/utils/helpers/helper_functions.dart";
import "package:flutter/material.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo, Title , Subtitle
              LoginHeader(dark: dark),
              //Form
              LoginForm(),

              ///Divider
              FormDivider(
                dividerText: TTexts.orSignInWith,
              ),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              //Footer
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
