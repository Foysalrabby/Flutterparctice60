

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
  RangeValues valuesare= RangeValues(1, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels rangeLabels=RangeLabels(valuesare.start.toString(), valuesare.end.toString());
    return Scaffold(
       appBar:AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         title: Text("this is stateful app",)
       ),

      body:Center(
        child: RangeSlider(
          values:valuesare,
          labels: rangeLabels,
          divisions: 20,
          activeColor: Colors.black, //chage rage color
          inactiveColor: Colors.amber,
          min: 1,
          max: 100,
          onChanged: (RangeValues value) {
               valuesare=value;
            setState(() {

            });
          } ,
        ),
      ),

    );
  }

}