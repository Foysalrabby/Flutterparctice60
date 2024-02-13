import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myappflater/main.dart';

class Introduct extends StatelessWidget{
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
            child: Text("this is new introduction page"),
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