import 'package:flutter/material.dart';

class Pink extends StatefulWidget {
  @override
  _PinkState createState() => _PinkState();
}

class _PinkState extends State<Pink> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Container(color: Colors.pink,height: 400,width: 300,child: Text("Child Page",style: TextStyle(fontSize: 40, color: Colors.white),),),

    );
  }
}