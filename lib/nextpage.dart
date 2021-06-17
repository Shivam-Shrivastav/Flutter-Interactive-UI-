import 'package:flutter/material.dart';


class Show extends StatefulWidget {

  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Center(child: InkWell(onTap: null,
              child: Container(height:420,width: 320,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(decoration: BoxDecoration(color: Colors.amber,boxShadow:[BoxShadow(color: Colors.black87,offset: Offset(10, 10),blurRadius: 30,spreadRadius: 10)]),height: 320,width: 200,child: Text("Child Page",style: TextStyle(fontSize: 40, color: Colors.white),),),
          ],
        )),
      )),

    );
  }
}