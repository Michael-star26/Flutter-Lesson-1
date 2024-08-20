// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  Cat createState() => Cat();
}
class Cat extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: Scaffold(
        body: Padding(padding: 
        EdgeInsets.all(20.0), 
        child: SingleChildScrollView(
          child: FirstContainer(),
        ),),
      ),
    );
  }
}

class FirstContainer extends StatelessWidget {
  const FirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        // border: Border(
        //   left: BorderSide(width: 5,color: Colors.black),
        //   bottom:BorderSide(width: 5,color: Colors.black), 
        // ),
        // border: Border.all(color: Colors.deepOrange, width: 15),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50), 
          topRight: Radius.circular(15), 
          bottomRight: Radius.circular(50),
          bottomLeft: Radius.circular(15)
        ),
        boxShadow: [
          BoxShadow(
          offset: Offset(30, 10), 
          color:Colors.lightGreenAccent , 
          blurStyle: BlurStyle.normal, 
          blurRadius: 30,
           )
        ]
      ),
      child: Center(
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.orange, 
              decoration: TextDecoration.underline, 
              fontStyle: FontStyle.italic, 
              fontSize: 20,
            ), 
            children: <TextSpan>[
              TextSpan(
                text: "I Love Cats",
                style: TextStyle(
                  color: Colors.brown, 
                  fontSize: 40,
                ),                 
              ), 
              TextSpan(
                text: "Humans Will Always Betray Me !!", 
                style: TextStyle(
                  color: Colors.cyan, 
                  fontSize: 30
                )
              )
            ]
          ),           
        ),
      ),
    );
  }
}
