import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:homelayout/Blue.dart';
import 'package:homelayout/Cars.dart';
import 'package:homelayout/Computers.dart';
import 'package:homelayout/Fruits.dart';
import 'package:homelayout/Green.dart';
import 'package:homelayout/Humans.dart';
import 'package:homelayout/Orange.dart';
import 'package:homelayout/Pink.dart';
import 'package:homelayout/Red.dart';
import 'nextpage.dart';
import 'Animals.dart';

class Templates extends StatefulWidget {
  @override
  _TemplatesState createState() => _TemplatesState();
}

class _TemplatesState extends State<Templates> {

  List<InkWell> containers;
  List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    containers = [
      InkWell(child: Container(height: 350,width: 200,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.amber,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4, 4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap: ()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Show())),),

      InkWell(child: Container(height: 350,width: 200,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.red,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4,4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap: ()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Red())),),
      

      InkWell(child: Container(height:350, width:200,color:Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.blue,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4,4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap: ()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Blue())),),

      InkWell(child: Container(height: 350,width: 200,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.green,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4,4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap: ()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Green())),),
      

      InkWell(child: Container(height: 350,width: 200,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.orange,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4,4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap: ()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Orange())),),
      

      InkWell(child: Container(height: 350,width: 200,color: Colors.white10,child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(decoration: BoxDecoration(color: Colors.pink,boxShadow:[BoxShadow(color: Colors.black45,offset: Offset(4,4),blurRadius: 5,spreadRadius: 1)]),height: 320,width: 180,),
        ],
      )),onTap: ()=>Navigator.push(context, new MaterialPageRoute(
        builder: (context) =>Pink())),)
        
        
        
        ];
        isSelected=[
      false,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
        home: DefaultTabController(
        length: 5,
        initialIndex: 0,
            child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
                      child: AppBar(
              bottom: TabBar(isScrollable: true,
              labelColor: Colors.green,
              indicatorColor: Colors.purple.shade700,
              unselectedLabelColor: Colors.red,
                tabs: <Widget>[
                Tab(child:Text("Animals",style: TextStyle(color:Colors.purple.shade800),),),
                Tab(child:Text("Fruits",style: TextStyle(color:Colors.purple.shade800),),),
                Tab(child:Text("Cars",style: TextStyle(color:Colors.purple.shade800),),),
                Tab(child:Text("Humans",style: TextStyle(color:Colors.purple.shade800),),),
                Tab(child:Text("Computers",style: TextStyle(color:Colors.purple.shade800),),),
              ]),
              backgroundColor: Colors.purple.shade100,
              title: Text(
                "Choose Templates",
                style: TextStyle(color:Colors.purple.shade700),
              ),
              centerTitle: true,
            ),
          ),

               
              body: TabBarView(
                children: <Widget>[
                  Animals(),
                  Fruits(),
                  Cars(),
                  Humans(),
                  Computers(),

                  

                ] )
              
              // Center(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: <Widget>[
              //       SizedBox(
              //         height: 350,
              //         child: Swiper(
              //         outer: false,
              //         curve: Curves.elasticInOut,
              //         physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              //         pagination: SwiperPagination(),
              //         itemCount: containers.length,
              //         containerWidth: 10,
              //         itemBuilder: (BuildContext context, int index)
              //         {
              //           return Center(child: ToggleButtons(borderColor: Colors.white10,selectedBorderColor: Colors.white10,children: <Widget>[containers[index]], isSelected: isSelected,onPressed: (index){isSelected[index] =!isSelected[index];},));
              //         },
              //         viewportFraction: 0.6,
              //         scale: 0.7,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
                  
          
        ),
      ),
    );
  }
}