import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  var textcontroller1=TextEditingController();
  var textcontroller2=TextEditingController();
  var result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
         title: Text("this is stateful app",)
       ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: textcontroller1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter first number',
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: textcontroller2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter second number',
                ),

              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding: EdgeInsets.only(top: 60),),
                  ElevatedButton(onPressed: (){
                    var num1=int.parse(textcontroller1.text.toString());
                    var num2=int.parse(textcontroller2.text.toString());
                    result=num1+num2;
                    print(result);
                    setState(() {

                    });
                  }, child: Text("add")),
                  ElevatedButton(onPressed: (){
                    var num1=int.parse(textcontroller1.text.toString());
                    var num2=int.parse(textcontroller2.text.toString());
                    result=num1-num2;
                    print(result);

                    setState(() {
                    });
                  }, child: Text("sub")),
                  ElevatedButton(onPressed: (){
                    var num1=int.parse(textcontroller1.text.toString());
                    var num2=int.parse(textcontroller2.text.toString());
                    result=num1*num2;
                    print(result);
                    setState(() {
                    });
                  }, child: Text("mul")),
                  ElevatedButton(onPressed: (){
                    var num1=int.parse(textcontroller1.text.toString());
                    var num2=int.parse(textcontroller2.text.toString());
                    double result2=num1/num2;
                    print(result2);
                    setState(() {
                    });
                  }, child: Text("div"))
                ],
              ),
              Text("Result : $result", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),)

            ],
          ),


        ),
      ),


    );
  }

}