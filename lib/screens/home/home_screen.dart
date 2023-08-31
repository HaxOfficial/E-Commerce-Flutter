import 'package:e_commerce/enums.dart';
import 'package:e_commerce/screens/home/components/body.dart';
import 'package:e_commerce/screens/profile/components/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static String routeName = "/home ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomNavBar(selectedMenu: MenuState.home),
    );
  }
}
