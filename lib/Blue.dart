import 'package:flutter/material.dart';
class Blue extends StatefulWidget {
  @override
  _BlueState createState() => _BlueState();
}

class _BlueState extends State<Blue> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Container(color: Colors.blue,height: 400,width: 300,child: Text("Child Page",style: TextStyle(fontSize: 40, color: Colors.white),),),

    );
  }
}