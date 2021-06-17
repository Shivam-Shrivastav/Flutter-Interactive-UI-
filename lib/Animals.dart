import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:homelayout/Animals/Cats.dart';
import 'Animals/Dogs.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  
  
  

  List<InkWell> containers;
  List<bool> isSelected;

  @override
  void initState() {

    super.initState();
    containers = [
      InkWell(child: Container(height: 350,width: 200,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(child: Center(child: Text("Support Vector Machine", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid, fontSize: 35),textAlign: TextAlign.center,)),decoration: BoxDecoration(color: Colors.amber,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4, 4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap:()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Dogs())),),

      InkWell(child: Container(height: 350,width: 200,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(child: Center(child: Text("Outliers in Logistic Regression", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white, fontStyle: FontStyle.italic, decorationStyle: TextDecorationStyle.solid, fontSize: 35),textAlign: TextAlign.center,)),decoration: BoxDecoration(color: Colors.red,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4,4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap: ()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Cats())),),

  ];
        isSelected=[
      false,
    ];
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(   
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 350,
                  child: Swiper(
                  outer: false,
                  curve: Curves.elasticInOut,
                  physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                  pagination: SwiperPagination(),
                  itemCount: containers.length,
                  containerWidth: 10,
                  itemBuilder: (BuildContext context, int index)
                  {
                    return Center(child: ToggleButtons(borderColor: Colors.white10,selectedBorderColor: Colors.white10,children: <Widget>[containers[index]], isSelected: isSelected,onPressed: (index){isSelected[index] =!isSelected[index];},));
                  },
                  viewportFraction: 0.6,
                  scale: 0.7,
                  ),
                ),
              ],
            ),
          ),
    );
  }

  
}



