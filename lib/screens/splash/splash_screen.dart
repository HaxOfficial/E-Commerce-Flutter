import 'package:e_commerce/screens/components/body.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    /// You have to call it on your starting  Screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );

  }
}
