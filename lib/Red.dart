import 'package:flutter/material.dart';

class Red extends StatefulWidget {
  @override
  _RedState createState() => _RedState();
}

class _RedState extends State<Red> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Container(color: Colors.red,height: 400,width: 300,child: Text("Child Page",style: TextStyle(fontSize: 40, color: Colors.white),),),

    );
  }
}