import 'package:doctorsdoc/Doctors_Doc/Screens/main_pages/SquareTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Loginpage.dart';
import '../../../Registerpage/Registarationpage.dart';

void main() {
  runApp(MaterialApp(
    home: Docrelo(),
  ));
}

class Docrelo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFFD9E4EE),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Text(
                            "Helloo!",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 80),
                          child: Lottie.asset("images/doctors.json"),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(320, 80),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.red[900],
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Loginpage()));
                    },
                    child: Text("LOGIN")),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(320, 80),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 20),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Registraionpage()));
                    },
                    child: Text("SIGN UP")),
                SizedBox(
                  height: 40,
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'images/google-icon.png'),
                    const SizedBox(width: 25,),
                    SquareTile(imagePath: 'images/applelogo.png'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
