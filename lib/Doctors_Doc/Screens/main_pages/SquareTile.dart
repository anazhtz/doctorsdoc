import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget{
  final String imagePath;
  //final String pageRout;
  const SquareTile({
 super.key,required this.imagePath,
    //required this.pageRout
});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
   child: IconButton(onPressed: (){
     //pageRout;
   }, icon: Image.asset(imagePath,height: 40,))
    );
  }
}