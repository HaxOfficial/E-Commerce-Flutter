import 'package:e_commerce/constants.dart';
import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/profile/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}


