import 'package:e_commerce/constants.dart';
import 'package:e_commerce/routes.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:e_commerce/screens/splash/splash_screen.dart';
import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: theme(),
      // home: const MyHomePage(),
      // home: SplashScreen(),
      /// We use routeName so that we don't need to remember the name
      // initialRoute: SplashScreen.routeName,
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}






// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("widget.title"),
//       ),
//       body: Container(
//
//       )
//
//
//     );
//   }
// }
