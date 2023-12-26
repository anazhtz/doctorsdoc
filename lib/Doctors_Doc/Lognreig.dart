import 'package:doctorsdoc/Doctors_Doc/SquareTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'Loginpage.dart';
import 'Registarationpage.dart';

void main() {
  runApp(MaterialApp(
    home: Docrelo(),
  ));
}

class Docrelo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                      backgroundColor: Colors.purple,
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
                      backgroundColor: Colors.red[700],
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
                  height: 50,
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'images/google-icon.png'),
                    const SizedBox(width: 10,),
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
