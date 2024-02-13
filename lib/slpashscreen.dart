import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Slpashsceen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return  Slpahstate();
  }

}
class Slpahstate extends State<StatefulWidget>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(
            child: Text("Muslim",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30),),
         ),
        )
    );
  }

}


// class Slpashsceen extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        body: Container(
//          color: Colors.blue,
//          child: Center(
//            child: Text("Muslim",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30),),
//          ),
//        ),
//
//     );
//   }
//
// }