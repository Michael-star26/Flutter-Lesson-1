// ignore_for_file: unused_import, prefer_const_constructors, use_key_in_widget_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'pages/home.dart';
void main() => runApp(Cat());

class Cat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cat",
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar(
          leading: IconButton(onPressed: (){},icon: Icon(Icons.menu)),
          title:Text("Cat") ,
          flexibleSpace: SafeArea(
            child: Icon(Icons.photo_camera_back_rounded),
            minimum: EdgeInsets.all(20)),
            actions:<Widget> [              
              IconButton(onPressed: (){},
               icon: Icon(Icons.share),),
              IconButton(onPressed: (){}, 
              icon: Icon(Icons.info)),
              Padding(padding: EdgeInsets.all(16.0)),
            ],
            backgroundColor: Color.fromARGB(255, 72, 155, 47),
            bottom: PreferredSize(
              // ignore: avoid_unnecessary_containers
              child: Container(
                // color: Colors.greenAccent,
                height: 50,
                decoration: BoxDecoration(       
                  gradient: LinearGradient(
                    colors: [
                      Colors.amber,Colors.cyan ],
                      begin: Alignment.topCenter, 
                      end: Alignment.bottomCenter),                     
                ),
                child: Center(
                  child: Column(
                    children:<Widget> [
                      Row(children: <Widget>[
                        IconButton(onPressed: (){}, icon: Icon(Icons.search)), 
                        IconButton(onPressed: (){}, icon: Icon(Icons.schedule_send)), 
                        IconButton(onPressed: (){}, icon: Icon(Icons.shuffle_on)), 
                        IconButton(onPressed: (){}, icon: Icon(Icons.checklist))
                      ],)
                    ],
                  ),                 
                ),
              ),
              preferredSize: Size.fromHeight(50),),
        ),
        body:Home() ,
      ),
    );
  }
}


