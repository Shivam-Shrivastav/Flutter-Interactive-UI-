import 'package:flutter/material.dart';

class Green extends StatefulWidget {
  @override
  _GreenState createState() => _GreenState();
}

class _GreenState extends State<Green> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Container(color: Colors.green,height: 400,width: 300,child: Text("Child Page",style: TextStyle(fontSize: 40, color: Colors.white),),),

    );
  }
}