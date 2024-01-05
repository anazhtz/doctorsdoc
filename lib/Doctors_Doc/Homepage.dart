import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'Screens/DoctorsSec.dart';

void main(){
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget{

 final List<String>catNames=[
    "Pediatrician",
    "Neurologist",
    "Cardiologist",
    "Dermatologist"
  //  "Psychiatrist"
  ];
 final List<String> catIcon=[
    "Categories/Pediatrician.png",
    "Categories/Neurologist.png",
    "Categories/Cardiologist.png",
    "Categories/Dermatologist.png",
   // "images/Categories/psychatrist.png"
  ];

  @override
  Widget build(BuildContext context) {

    var _currentIndex = 0;
    return Scaffold(backgroundColor: Color(0xFFD9E4EE),
      // bottomNavigationBar: SalomonBottomBar(
      //   currentIndex: _currentIndex,
      //   onTap: (i) => setState(() => _currentIndex = i),
      //   items: [
      //     /// Home
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.home),
      //       title: Text("Home"),
      //       selectedColor: Colors.purple,
      //     ),
      //
      //     /// Likes
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.favorite_border),
      //       title: Text("Likes"),
      //       selectedColor: Colors.pink,
      //     ),
      //
      //     /// Search
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.search),
      //       title: Text("Search"),
      //       selectedColor: Colors.orange,
      //     ),
      //
      //     /// Profile
      //     SalomonBottomBarItem(
      //       icon: Icon(Icons.person),
      //       title: Text("Profile"),
      //       selectedColor: Colors.teal,
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade300,
                      Colors.blue.shade700,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  )
                ),
              ),
              Padding(padding: EdgeInsets.only(
                top: 30),
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                      child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(radius: 30,
                                  backgroundImage: AssetImage("Doctors/Doc4.jpg"),
                                ),
                                IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined,
                                color: Colors.white,size: 30,)
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,),
                            //user name
                            Text("Hi, Anas",style: TextStyle(color: Colors.white,
                                fontSize: 18,fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Your Health is Our \nFirst Priority",style: TextStyle(color: Colors.white,
                                fontSize: 25,fontWeight: FontWeight.w500),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 15,bottom: 20),
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 6,
                                    spreadRadius: 3
                                  ),
                                ]
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Find Your Specialist... ",
                                  hintStyle: TextStyle(
                                    color: Colors.black45,
                                  ),
                                  prefixIcon: Icon(Icons.search,
                                  size: 25,),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    Padding(padding: EdgeInsets.only(left: 15),
                    child: Text("Categories",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                    ),
                    ),
                    SizedBox(height:15 ,),

                    Container(
                      height: 100,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: catNames.length,
                        itemBuilder: (context, index){
                          return Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: 5,horizontal: 15),
                                height: 50,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF2F8FF),
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 4,
                                      spreadRadius: 2,
                                    ),
                                  ]
                                ),
                                child: Center(
                                  child: Image(image: AssetImage(catIcon[index]))
                                ),
                                ),
                              SizedBox(height: 10,),
                              Text(catNames[index],style:
                                TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87
                                ),),
                            ],
                          );
                        }
                      ),
                    ),
                    SizedBox(height: 30,),
                    Padding(padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Recommended Doctors",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.black54
                      ),
                    ),
                    ),
                    DoctorsSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}