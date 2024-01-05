import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
void main(){
  runApp(MaterialApp(home: AppoinmentScreen(),));
}

class AppoinmentScreen extends StatelessWidget{

  DateTime today = DateTime.now();

  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor:Color(0xFFD9E4EE),
     body: Container(
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
                   Colors.blue.withOpacity(0.9),
                   Colors.blue.withOpacity(0),
                   Colors.blue.withOpacity(0),
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
                         onTap: (){},
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
                 SizedBox(height: 15,),
                 // Text("Lorem Ipsum is simply dummy text of the printing and "
                 //     "typesetting industry. Lorem Ipsum has been the industry's "
                 //     "standard dummy text ever since the 1500s,",style: TextStyle(
                 //   fontSize: 15,
                 //   fontWeight: FontWeight.w500,
                 //   color: Colors.black.withOpacity(0.6),
                 // ),
                 //   textAlign: TextAlign.justify,
                 // ),
                 SizedBox(
                   height: 15,
                 ),
                 Text("Book Date",style: TextStyle(
                   fontSize: 18,
                   color: Colors.black87,
                   fontWeight: FontWeight.w600
                 ),),
                 SizedBox(height: 8,),
                 Container(

                   // child: TableCalendar(
                   //   locale: 'en_us',
                   //   rowHeight: 35,
                   //   headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
                   //   focusedDay: today,
                   //   firstDay: DateTime.utc(2000, 01,01),
                   //   lastDay:DateTime.utc(2030, 01,01),
                   // ),
                 )
               ],
             ),
           ),
         ],
       ),
     ),
   )
   );
  }

}