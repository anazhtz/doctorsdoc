import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:doctorsdoc/Doctors_Doc/Screens/main_pages/Lognreig.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(
    home: MyApp(),
  //     home:  StreamBuilder<User?>(
  //       stream: FirebaseAuth.instance.authStateChanges(),
  //       builder: ((context, snapshot) {
  //         if (snapshot.hasData) {
  //           return Homepage();
  //         } else {
  //           return Loginpage();
  //         }
  //       }),
  //     )
  // )
  ));
}
class MyApp extends StatelessWidget{
  @override
  Key? get key => super.key;
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Doctors doc',
     theme: ThemeData(
       primarySwatch: Colors.blue,
     ),
     home: Docsplash(),
   );
  }
}
class Docsplash extends StatefulWidget{
  @override
  State<Docsplash> createState() => _DocsplashState();
}

class _DocsplashState extends State<Docsplash> {
  @override
//   void initState() {
//     super.initState();
//     Timer(Duration(seconds: 4), () {
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dochome()));
//     });
//     super.initState();
//   }
  Widget build(BuildContext context) {
   return AnimatedSplashScreen(backgroundColor: Color(0xFFD9E4EE),
     splash: Column(
       children: [
         Center(child: Lottie.asset("images/Doc lottie.json",width: 350,height:350,
             fit: BoxFit.cover)),
         Center(child: Text("Doctors Doc",style:GoogleFonts.aBeeZee(
             fontWeight: FontWeight.bold,fontSize: 40,color: Colors.blue[800]),
    ))],
     ), nextScreen: Docrelo(),
     splashIconSize: 450,
     duration: 4050,
     splashTransition: SplashTransition.slideTransition,
   );
  }
}