import 'package:doctorsdoc/Doctors_Doc/Screens/main_pages/Loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Doctors_Doc/firebasehelper/helperfirebase.dart';
import '../admin_loginpage/adminregister.dart';

void main(){
  runApp(MaterialApp(home: Registraionpage(),));
}
class Registraionpage extends StatefulWidget{
  @override
  State<Registraionpage> createState() => _RegistraionpageState();
}

class _RegistraionpageState extends State<Registraionpage> {
  String? email;
  String? phoneno;
  String? passs;
  String? name;
  var formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Color(0xFFD9E4EE),
     body: Form(
       key: formkey,
       child: SafeArea(
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
                     validator: (name) {
                       if (name!.isEmpty) {
                         return "Enter Some value";
                       } else {
                         return null;
                       }
                     },
                     onSaved: (uname) {
                       name = uname;
                     },
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
                       validator: (uemail){
                         if(uemail!.isEmpty || ! uemail.contains("@")|| !uemail.contains(".")){
                           return "Please enter valid Username";
                         }
                         else{
                           return null;
                         }
                       },
                     onSaved: (ename) {
                       email = ename;
                     },

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
                       validator: (uphoneno){
                         if(uphoneno!.isEmpty || uphoneno.length<10){
                           return "please enter valid Password";
                         }else{
                           return null;
                         }
                       },
                     onSaved: (pno) {
                       phoneno = pno;
                     },
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
                     validator: (password) {
                       if (password!.isEmpty) {
                         return "Password cannot be empty";
                       } else {
                         return null;
                       }
                     },
                     onSaved: (pwd) {
                       passs = pwd;
                     },
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
                               if(formkey.currentState!.validate()){
                                  formkey.currentState!.save();
                                       FireHelper().signUp(mail: email!, password :passs! , name: name! , phone: phoneno!, type: "client" ).then((value) {
                                     if(value == null){
                                       print("Signin success");
                                   Get.to(Loginpage());
                                   }else{
                                      Get.snackbar("Error", value);
                                               }
                                            });
                                        }
                               Navigator.pop(context);
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
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>Adminregis()));
                           }, child: Text("Admin Register",style: TextStyle(color: Colors.grey[700],fontWeight: FontWeight.bold),),)
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
     ),
   );
  }
}