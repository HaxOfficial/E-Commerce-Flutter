import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/components/no_account_text.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(24),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),

              SizedBox(height: SizeConfig.screenHeight! * 0.1),

              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errros = [];
  late String email;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            onChanged: (value) {
              if (value.isNotEmpty && errros.contains(kEmailNullError)) {
                setState(() {
                  errros.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errros.contains(kInvalidEmailError)) {
                setState(() {
                  errros.remove(kInvalidEmailError);
                });
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty && !errros.contains(kEmailNullError)) {
                setState(() {
                  errros.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errros.contains(kInvalidEmailError)) {
                setState(() {
                  errros.add(kInvalidEmailError);
                });
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              // suffixIcon: SvgPicture.asset("assets/icons/Mail.svg"),
              suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
            ),
          ),

          SizedBox(height: getProportionateScreenHeight(30),),

          FormError(errors: errros),

          SizedBox(height: SizeConfig.screenHeight! * 0.1),

          DefaultButton(text: "Continue", press: (){
            if(_formKey.currentState!.validate()){
              // Todo Do What you want to do
            }
          },),

          SizedBox(height: SizeConfig.screenHeight! * 0.1),

          NoAccountText()

        ],
      ),
    );
  }
}
