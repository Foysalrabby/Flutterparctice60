

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
    var fth=TextEditingController();
    var inch=TextEditingController();
    var weight=TextEditingController();
    var result="hello";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         title: Text("this is stateful app",)
       ),

      body:Container(
        color: Colors.amber,
          child:Center(
            child: Container(
              width: 300,
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("BMI CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold),),
                TextField(
                  controller: fth,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your hegiht in feet",
                    prefix: Icon(Icons.height_sharp),
                  ),
                ),
                TextField(
                  controller: inch,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your hegiht in inch",
                    prefix: Icon(Icons.height_sharp),
                  ),
                ),
                TextField(
                  controller: weight,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter your hegiht in weight",
                    prefix: Icon(Icons.monitor_weight),
                  ),
                ),
                SizedBox(height: 14,),
                ElevatedButton(onPressed: (){
                  var ftth=fth.text.toString();
                  var finch=inch.text.toString();
                  var fwaeight=weight.text.toString();
                  var finalhfeet=int.parse(ftth);
                  var finalhinch=int.parse(finch);
                  var finalhweight=int.parse(fwaeight);
                   var Totalheight=((finalhfeet*12)+finalhinch)*0.0254;
                  if(ftth != "" && finch != "" && fwaeight!= ""){
                       var bmi=(finalhweight/(Totalheight*Totalheight));

                       setState(() {
                         result="your Bmi is :${bmi}";
                       });
                  }
                  else{
                    result="Please fill all text";
                    setState(() {

                    });


                  }

                }, child: Text("Bmi cal")),
                SizedBox(height: 14,),
                Text(result,style: TextStyle(fontWeight: FontWeight.bold),),
              ],

              ),
            ),
          ))

    );



  }

  void bmicalculate(){

    {
      var ftth=fth.text.toString();
      var finch=inch.text.toString();
      var fwaeight=weight.text.toString();
      var finalhfeet=int.parse(ftth);
      var finalhinch=int.parse(finch);
      var finalhweight=int.parse(fwaeight);
      var Totalheight=((finalhfeet*12)+finalhinch)*0.0254;
      if(ftth != "" && finch != "" && fwaeight!= ""){
        var bmi=(finalhweight/(Totalheight*Totalheight));

        setState(() {
          result="your Bmi is :${bmi}";
        });
      }
      else{
        result="Please fill all text";
        setState(() {

        });


      }

    }

  }

}
