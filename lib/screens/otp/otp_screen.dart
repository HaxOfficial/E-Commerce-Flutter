import 'package:flutter/material.dart';

import '../otp/components/body.dart';


class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
