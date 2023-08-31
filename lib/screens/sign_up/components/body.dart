import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screens/sign_up/components/sign_up_form.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/social_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.02, // 2% height
              ),

              Text("Register Account", style: headingStyle),
              Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
              ),
              // 8% of total height

              SignUpForm(),

              SizedBox(
                height: SizeConfig.screenHeight! * 0.07,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                ],
              ),
              
              SizedBox(height: getProportionateScreenHeight(20),),

              Text(
                "By continuing your confirm that you agree \nwith our Team and Condition",
                textAlign: TextAlign.center,
              ),

              
            ],
          ),
        ),
      ),
    );
  }
}
