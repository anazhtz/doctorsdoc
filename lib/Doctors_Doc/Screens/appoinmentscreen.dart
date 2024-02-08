import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctorsdoc/Doctors_Doc/Homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// void main()async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     home: AppoinmentScreen(),
//   ));
// }

class AppoinmentScreen extends StatefulWidget{

  @override
  State<AppoinmentScreen> createState() => _AppoinmentScreenState();
}

class _AppoinmentScreenState extends State<AppoinmentScreen> {
  final  appoiTime = ['09:00am','09:30am','10:00am','11:30am','02:30pm','03:00pm','03:30pm','04:00pm'];
  String ? selectedTime;

  final CollectionReference appoinment= FirebaseFirestore.instance.collection('appoinment');

  TextEditingController appoName =TextEditingController();
  TextEditingController appoDate = TextEditingController();
  TextEditingController appoTime = TextEditingController();
  TextEditingController appoPhone = TextEditingController();


  void appoAdd(){
    final data={
       'Name' : appoName.text,
       'Date' : appoDate.text,
       'Time' : selectedTime,
       'Phone' : appoPhone.text,
    };
    appoinment.add(data);
  }

  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950),
        lastDate: DateTime(2026));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
  @override
  Widget build(BuildContext context) {

   return Scaffold(backgroundColor:Color(0xFFD9E4EE),
     body: Container(
     child: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           children: [
             Container(
               width: MediaQuery.of(context).size.width,
               height: MediaQuery.of(context).size.width /2.1,
               decoration: BoxDecoration(
                 image: DecorationImage(image: AssetImage("Doctors/Doc2.jpg"),
                 fit: BoxFit.cover),
                 borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),
                 bottomRight: Radius.circular(20),
                 )
               ),
               child: Container(
                 decoration: BoxDecoration(
                   gradient: LinearGradient(colors: [
                     Colors.red.withOpacity(0.9),
                     Colors.red.withOpacity(0),
                     Colors.red.withOpacity(0),
                   ],
                     begin: Alignment.bottomCenter,
                     end: Alignment.topCenter,

                   ),
                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         InkWell(
                           onTap: (){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
                           },
                           child: Container(
                             margin: EdgeInsets.all(8),
                             height: 45,
                             width: 45,
                             decoration: BoxDecoration(
                               color: Color(0xFFF2F8FF),
                               borderRadius: BorderRadius.circular(10),
                               boxShadow: [
                                 BoxShadow(
                                   color: Colors.black12,
                                   blurRadius: 4,
                                   spreadRadius: 2,
                                 )
                               ]
                             ),
                             child: Center(
                               child: Icon(Icons.arrow_back,color: Colors.blue.shade700,size: 28,),
                             ),
                           ),
                         ),
                         Container(
                           margin: EdgeInsets.all(8),
                           height: 45,
                           width: 45,
                           decoration: BoxDecoration(
                             color: Color(0xFFF2F8FF),
                             borderRadius: BorderRadius.circular(10),
                             boxShadow: [
                               BoxShadow(
                                 color: Colors.black12,
                                 blurRadius: 4,
                                 spreadRadius: 2,
                               )
                             ]
                           ),
                           child: Center(
                             child: Icon(Icons.favorite_outline,color: Colors.blue.shade700,size: 28,),
                         )
                         )],
                     ),
                     ),
                     SizedBox(height: 80,child:
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         crossAxisAlignment: CrossAxisAlignment.end,
                         children: [
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Patients",style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                               ),
                               SizedBox(height: 8,),
                               Text("2.1k",style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.white,
                               ),),

                             ],
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Experience",style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                               ),
                               SizedBox(height: 8,),
                               Text("12 years",style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.white,
                               ),),

                             ],
                           ),
                           Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text("Rating",style: TextStyle(
                                 fontSize: 20,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                               ),
                               SizedBox(height: 8,),
                               Text("4.5",style: TextStyle(
                                 fontSize: 18,
                                 fontWeight: FontWeight.w500,
                                 color: Colors.white,
                               ),),
                             ],
                           ),
                       ],
                       ),
                       )
                   ],
                 ),
               ),
             ),
             SizedBox(height: 10),
             Padding(padding: EdgeInsets.symmetric(horizontal: 10,),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Dr Rashad Mbbs",style:
                     TextStyle(
                       fontWeight: FontWeight.w500,
                       fontSize: 28,
                       color: Colors.blue.shade700
                     ),),
                   SizedBox(height: 5,),
                   Row(children: [
                     Icon(MdiIcons.heartPulse,color: Colors.red,size: 28,),
                     SizedBox(height: 5,),
                     Text("Surgeon",style: TextStyle(
                       fontSize: 17,
                       color: Colors.black87
                     ),
                     ),
                   ],
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Book Appoinmet",style: TextStyle(
                       fontSize: 18,
                       color: Colors.black87,
                       fontWeight: FontWeight.w600
                     ),
                     textAlign: TextAlign.justify,),
                   ),
                   SizedBox(height: 8,),
                   Container(
                     child: Column(
                       children: [
                         SizedBox(
                           height: 10,
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: TextField(
                             controller: appoName,
                             decoration: InputDecoration(
                               enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.red)
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.red),
                               ),
                               fillColor: Colors.grey[200],
                               filled: true,
                               border: OutlineInputBorder(),
                               label: Text("Name of patient"),
                             ),
                           ),
                         ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                             child: TextFormField(
                               controller: appoDate,
                               onTap: () {
                                 _selectDate(context);
                                 appoDate.text = "${selectedDate.toLocal()}".split(' ')[0];
                               },
                               decoration: InputDecoration(
                                 enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.red),
                                 ),
                                 hintText: "Select Date",
                                 focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.red),
                                 ),
                                 fillColor: Colors.grey[200],
                                 filled: true,
                                 label:Text("Select Date",style: TextStyle(color: Colors.black),),
                               ),
                             ),
                         ),
                          ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: DropdownButtonFormField(
                             decoration: InputDecoration(
                               enabledBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.red),
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.red),
                               ),
                               fillColor: Colors.grey[200],
                               filled: true,
                               label:Text("Select Time",style: TextStyle(color: Colors.black),),
                             ),

                               items: appoiTime.map((e) => DropdownMenuItem(child: Text(e),
                             value: e,)).toList(),onChanged: (val){
                                   selectedTime =val;
                                }),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child:TextField(
                             keyboardType: TextInputType.number,
                             maxLength: 10,
                             controller: appoPhone,
                             decoration: InputDecoration(
                               enabledBorder: OutlineInputBorder(
                                   borderSide: BorderSide(color: Colors.red)
                               ),
                               focusedBorder: OutlineInputBorder(
                                 borderSide: BorderSide(color: Colors.red),
                               ),
                               fillColor: Colors.grey[200],
                               filled: true,
                               border: OutlineInputBorder(),
                               label: Text("Phone Number"),
                             ),
                           ),
                         ),
                         SizedBox(height: 25,),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: ElevatedButton(onPressed: (){
                             appoAdd();
                             Navigator.pop(context);
                           },
                               style: ButtonStyle(
                                   minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                                   backgroundColor: MaterialStateProperty.all(Colors.red)
                               ),
                               child: Text("Submit",style: TextStyle(fontSize: 20),)),
                         ),
                       ],
                     ),
                   ),
                 ],
               ),
             )
           ],
         ),
                   )
     )
     )
   );

  }
}