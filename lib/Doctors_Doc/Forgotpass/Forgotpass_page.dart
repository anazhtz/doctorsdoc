import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main(){
  runApp(MaterialApp(home: Forgotpas(),));
}
class Forgotpas extends StatefulWidget{
  @override
  State<Forgotpas> createState() => _ForgotpasState();
}
class _ForgotpasState extends State<Forgotpas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFD9E4EE),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
              Text("Forgot Password ?",
                style: GoogleFonts.aBeeZee(
                    fontWeight: FontWeight.bold,fontSize: 25,color: Colors.grey[700]),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: " Email address",
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    prefixIcon: const Icon(Icons.email),
                    labelStyle: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 350),
                child: TextButton(
                    style: TextButton.styleFrom(
                      fixedSize: Size(100, 20),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    onPressed: () {

                    },
                    child: Text("NEXT")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}