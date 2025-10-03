// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My First Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My First Flutter App',
        style: TextStyle(
          color: Colors.lightGreenAccent,
          fontSize:22,
          fontWeight: FontWeight.bold,
        ),
        ),
        backgroundColor: Colors.red,
        centerTitle:true ,
        elevation:8,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white],

          ),
        ),
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Main greeting
              Text(
                'Hello,Flutter',
                style:TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),

              SizedBox(height: 20),

              //subtitle
              Text(
                'Welcome to your first Flutter app!',
                style:TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ) ,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              //Icon
              Icon(
                Icons.flutter_dash,
                size: 100,
                color: Colors.red,
              ),
              SizedBox(height: 20),
              // Fun fact
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(15),
                border:Border.all(color: Colors.yellow),
              ),
              child: Text(
                'Fun Fact: Flutter can build apps for iOS,Android,Web,and Desktop from a single codebase',
                style:TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
                ),
            ],
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          //we'll learn about this in later lessons!
          print('Hello from Flutter');
        },
        child: Icon(Icons.thumb_up),
        backgroundColor: Colors.purpleAccent,
        
        ),
    );
  }
}