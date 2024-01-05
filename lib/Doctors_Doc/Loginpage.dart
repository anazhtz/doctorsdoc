import 'package:doctorsdoc/Doctors_Doc/Forgotpass/Forgotpass_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Homepage.dart';
import 'Registarationpage.dart';
import 'SquareTile.dart';

void main(){
  runApp(MaterialApp(home: Loginpage(),));
}
class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  GlobalKey<FormState> formkey=GlobalKey();
    bool showpass=true;

TextEditingController usernamecontroller=TextEditingController();

TextEditingController passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
  return Scaffold(backgroundColor: Color(0xFFD9E4EE),
  body: SingleChildScrollView(
    child: SafeArea(
      child: Center(
        child: Form(
            key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              const Image(image: AssetImage('images/cropped-AIR-DOCTOR-FAV-512-1.png'),width: 150,),
              const SizedBox(height: 30,),
               Text("Welcome back you!",style: TextStyle(color: Colors.grey,fontSize: 18),),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  controller: usernamecontroller ,
                  obscureText: false,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal.shade400),
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    prefixIcon: const Icon(Icons.person),
                    hintText: 'Mobile Number or Email Address',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                  ),
                    validator: (uname){
                      if(uname!.isEmpty || ! uname.contains("@")|| !uname.contains(".")){
                        return "Please enter valid Username";
                      }
                      else{
                        return null;
                      }
                    }
                ),
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextFormField(
                  controller: passwordcontroller,
                  obscureText: showpass,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade400),
                    ),
                    fillColor: Colors.grey[200],
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }else{
                          showpass=true;
                        }
                      });
                    },icon: Icon(showpass==true ? Icons.visibility_off : Icons.visibility),),
                  ),
                    validator: (upassword){
                      if(upassword!.isEmpty || upassword.length<6){
                        return "please enter valid Password";
                      }else{
                        return null;
                      }
                    }
                ),
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgotpas()));
                    }, child:Text("Forgot Password?",style: TextStyle(color: Colors.grey[600]),
                    ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25.0,),
              TextButton(
                  style: TextButton.styleFrom(
                    fixedSize: Size(360, 70),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(style: BorderStyle.none),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  onPressed: () {
                    final valid=formkey.currentState!.validate();
                    if (valid){
                      Get.to(Homepage());
                    }else{
                      return null;
                    }
                  },
                  child: Text("LOGIN")),
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
                      child: Text("Or continue with",style: TextStyle(color: Colors.grey[700]),),
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
              const SizedBox(height: 25.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: 'images/google-icon.png'),
                  const SizedBox(width: 25,),
                  SquareTile(imagePath: 'images/applelogo.png'),
                ],
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",style: TextStyle(color: Colors.grey[700]),),
                  const SizedBox(width: 4,),
                  TextButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Registraionpage()));
                  }, child: Text("Register Now",
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)),
                ],
              )
            ],
          ),
        ),
      ),
    ),
  ),
  );
  }
}