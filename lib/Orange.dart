import 'package:flutter/material.dart';

class Orange extends StatefulWidget {
  @override
  _OrangeState createState() => _OrangeState();
}

class _OrangeState extends State<Orange> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Container(color: Colors.orange,height: 400,width: 300,child: Text("Child Page",style: TextStyle(fontSize: 40, color: Colors.white),),),

    );
  }
}