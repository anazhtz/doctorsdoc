
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';



void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: Adminhome(),
  ));
}

class Adminhome extends StatefulWidget{
  @override
  State<Adminhome> createState() => _AdminhomeState();
}

class _AdminhomeState extends State<Adminhome> {
  final CollectionReference appoinment= FirebaseFirestore.instance.collection('appoinment');

  // void deleteDonor(docId){
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appoinment Details",style: TextStyle(
          fontWeight: FontWeight.bold,
        ),),
        backgroundColor: Colors.red,
      ),
      body: StreamBuilder(
          stream: appoinment.orderBy('Name').snapshots(),
          builder: (context ,AsyncSnapshot snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context,index){
                    final DocumentSnapshot donorSnap = snapshot.data.docs[index];
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 10,
                              spreadRadius: 15,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(

                                child: CircleAvatar(
                                  backgroundColor: Colors.teal[700],
                                  radius: 30,
                                  child: Text(donorSnap['Date'].toString(),style: TextStyle(fontSize: 10,
                                      fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(donorSnap['Name'],style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),),
                                Text(donorSnap['Phone'].toString(),style: TextStyle(fontSize: 18),),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.teal[700],
                                  radius: 30,
                                  child: Text(donorSnap['Time'].toString(),style: TextStyle(fontSize: 10,
                                      fontWeight: FontWeight.bold),),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    );
                  });
            }
            return Container();
          }),
    );
  }
}
