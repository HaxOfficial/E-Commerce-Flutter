import 'package:e_commerce/constants.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          text: "My Account",
          icon: "assets/icons/User Icon.svg",
          press: (){},
        ),

        ProfileMenu(
          text: "My Notifications",
          icon: "assets/icons/Bell.svg",
          press: (){},
        ),

        ProfileMenu(
          text: "Settings",
          icon: "assets/icons/Settings.svg",
          press: (){},
        ),

        ProfileMenu(
          text: "Help Center",
          icon: "assets/icons/Question mark.svg",
          press: (){},
        ),

        ProfileMenu(
          text: "Logout",
          icon: "assets/icons/Log out.svg",
          press: (){},
        ),


      ],
    );
  }
}


