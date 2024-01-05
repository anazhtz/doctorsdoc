import 'package:doctorsdoc/Doctors_Doc/Loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(home: Registraionpage(),));
}
class Registraionpage extends StatefulWidget{
  @override
  State<Registraionpage> createState() => _RegistraionpageState();
}

class _RegistraionpageState extends State<Registraionpage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Color(0xFFD9E4EE),
     body: SafeArea(
       child: SingleChildScrollView(
         child: Center(
           child: Column(
             children: [
               SizedBox(
                 height: 50,
               ),
               SizedBox(
                 width: 250,
                 child: Text("Create New Account ",
                   textAlign: TextAlign.center,
                   style: GoogleFonts.aBeeZee(
                 fontWeight: FontWeight.bold,fontSize: 25,color: Colors.grey[700]),
                 ),
               ),
               SizedBox(
                 height: 50,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: TextFormField(
                     decoration: InputDecoration(
                       labelText: " Name",
                       fillColor: Colors.grey[200],
                       filled: true,
                       enabledBorder: const OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.white,width: 2.0),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey.shade400),
                       ),
                        prefixIcon: const Icon(Icons.text_fields),
                        labelStyle: TextStyle(color: Colors.grey[500]),
                     ),
                 ),
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
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     labelText: " Phone Number",
                     fillColor: Colors.grey[200],
                     filled: true,
                     enabledBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white,width: 2.0),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey.shade400),
                     ),
                     prefixIcon: const Icon(Icons.phone),
                     labelStyle: TextStyle(color: Colors.grey[500]),
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     labelText: " Password",
                     fillColor: Colors.grey[200],
                     filled: true,
                     enabledBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white,width: 2.0),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey.shade400),
                     ),
                     prefixIcon: const Icon(Icons.password),
                     labelStyle: TextStyle(color: Colors.grey[500]),
                   ),
                 ),
               ),
               SizedBox(height: 30,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: TextFormField(
                   decoration: InputDecoration(
                     labelText: " Confirm Password",
                     fillColor: Colors.grey[200],
                     filled: true,
                     enabledBorder: const OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.white,width: 2.0),
                     ),
                     focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(color: Colors.grey.shade400),
                     ),
                     prefixIcon: const Icon(Icons.password),
                     labelStyle: TextStyle(color: Colors.grey[500]),
                   ),
                 ),
               ),
               SizedBox(
                 height: 60,
               ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25),
                 child: TextButton(
                     style: TextButton.styleFrom(
                       fixedSize: Size(350, 70),
                       foregroundColor: Colors.white,
                       backgroundColor: Colors.black,
                       textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                       shape: RoundedRectangleBorder(
                           side: BorderSide(style: BorderStyle.none),
                           borderRadius: BorderRadius.circular(8)),
                     ),
                     onPressed: () {
                       Get.to(Loginpage());
                     },
                     child: Text("SUBMIT")),
               ),
               const SizedBox(height: 50,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.5),
                 child: Row(
                   children: [
                     Expanded(
                       child: Divider(
                         thickness: 0.5,
                         color: Colors.grey[400],
                       ),
                     ),
                     Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                         child: TextButton(onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginpage()));
                         }, child: Text("LOGIN",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),),)
                     ),
                     Expanded(
                       child: Divider(
                         thickness: 0.5,
                         color: Colors.grey[400],
                       ),
                     ),

                   ],
                 ),
               ),
             ],
           ),
         ),
       ),
     ),
   );
  }
}