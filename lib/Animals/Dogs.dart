import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

class Dogs extends StatefulWidget {
  @override
  _DogsState createState() => _DogsState();
}

class _DogsState extends State<Dogs> {

  @override
  void initState() {
    super.initState();
    Firebase.initializeApp().whenComplete(() { 
      print("completed");
      setState(() {});
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:StreamBuilder(
        stream: FirebaseFirestore.instance.collection('Database').snapshots(),
        builder: (context, snapshot){
          if (!snapshot.hasData) return Text('Loading data... Please wait....');
          return Center(child: PDF.network(snapshot.data.docs[0]['PDF'], height:600, width:400),);

        },
      )
    );
  }
}




