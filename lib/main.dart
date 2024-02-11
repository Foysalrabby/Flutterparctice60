import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         title: Text("this is stateful app",),



       ),

      body: Center(
        child: Text("hello"),
      ),


    );
  }

}