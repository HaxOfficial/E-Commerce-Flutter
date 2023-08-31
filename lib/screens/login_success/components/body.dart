import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';



import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.04,
            ),
            Image.asset(
              "assets/images/success.png",
              height: SizeConfig.screenHeight! * 0.4,
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Login Success",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              width: SizeConfig.screenWidth! * 0.6,
              child: DefaultButton(
                text: "Back to Home",
                press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ],
    );
  }
}


// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(
//             // height: 40,
//             height: SizeConfig.screenHeight! * 0.04,
//           ),
//           Image.asset("assets/images/success.png",
//               height: SizeConfig.screenHeight! * 0.4 //40%
//               // height: 350 //40%
//               ),
//           SizedBox(
//             // height: SizeConfig.screenHeight! * 0.08,
//             height: 40,
//           ),
//           Text(
//             "Login Success",
//             style: TextStyle(
//                 fontSize: getProportionateScreenWidth(30),
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black),
//           ),
//           Spacer(),
//           SizedBox(
//             width: SizeConfig.screenWidth! * 0.6,
//             // width: double.infinity,
//             child: DefaultButton(
//               text: "Back to Home",
//               press: () {
//                 Navigator.pushNamed(context, HomeScreen.routeName);
//               },
//             ),
//           ),
//           Spacer(),
//         ],
//       ),
//     );
//   }
// }
