import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
 import 'package:myappflater/introduc.dart';
import 'package:myappflater/slpashscreen.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Slpashsceen(),
    );
  }
}

 //create manual statefulwidget
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return Mystate();
  }
  // State<StatefulWidget> createState() => Mystate();  //USE  {} return => ai vabe write kora jai


}

// implement StatefulWidget of myhomepageclass in mystate class
class Mystate extends State<MyHomePage>{
  var textcontroller1=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         title: Text("this is stateful app",)
       ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(19),
            child: TextField(
              keyboardType: TextInputType.text,
              controller:textcontroller1 ,
              decoration: InputDecoration(
                  hintText: "enter the name",


              ),
            ),
          ),
           ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Introduct(textcontroller1.text.toString())));
            },child: Text("next"),),


        ],
      )


    );
  }

}