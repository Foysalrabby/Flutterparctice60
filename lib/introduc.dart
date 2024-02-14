import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myappflater/main.dart';

// ignore: use_key_in_widget_constructors
class Introduct extends StatelessWidget{
  var namehome;
  Introduct(this.namehome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("THIS is Intropage"),
       backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 400,
            color: Colors.redAccent,
            child: Text("this is ${namehome}",style: TextStyle(color:
            Colors.white, fontWeight: FontWeight.bold),),
          ),
          ElevatedButton(onPressed: (){

           // Navigator.push(context,MaterialPageRoute(builder: (context){return MyHomePage();}));
           //  Navigator.push(context,MaterialPageRoute(builder: (context)=> MyHomePage()));
            //to go one page  to another

          }, child: Text("go next page"))
        ],
      ),

    );
  }
  
}