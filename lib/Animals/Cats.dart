import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:firebase_core/firebase_core.dart';

class Cats extends StatefulWidget {
  @override
  _CatsState createState() => _CatsState();
}

class _CatsState extends State<Cats> {

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
          return Center(child: PDF.network(snapshot.data.docs[1]['PDF'], height:600, width:400),);

        },
      )
    );
  }
}




