import 'package:flutter/material.dart';
import 'package:homelayout/Templates.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(MyApp());
}


 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new Splash(),
      darkTheme: ThemeData.light(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 8,
      loaderColor: Colors.purple.shade700,
      backgroundColor: Colors.white,
      loadingText: Text("Notes of ML Algo",style: TextStyle(fontSize: 18,color: Colors.white),),
      gradientBackground: LinearGradient(colors: [Colors.purple.shade500,Colors.purpleAccent,Colors.purple.shade200],stops: [0.2,0.7,1]),
      title: Text("Mess with ML",style: TextStyle(color:Colors.white,fontSize: 80,fontFamily: 'Ruthie',fontWeight: FontWeight.w500),),
      navigateAfterSeconds: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {


  


  final tabs = [

    Center(child: Text("My Stories")),
    Templates(),
    Center(child: Text("About App")),
  ];

  int _currentindex = 1;

  

   @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade700,
        titleSpacing: 2,
        title: Text("Mess with ML",style: TextStyle(fontFamily: "Ruthie", fontSize: 40),),
        centerTitle: true,
      ),
      body: tabs[_currentindex],

      bottomNavigationBar: CurvedNavigationBar(
        index: _currentindex,
        color: Colors.purple.shade700,
        backgroundColor: Colors.white,
        buttonBackgroundColor: Colors.purple.shade100,
        height: 50,
        animationDuration: Duration(milliseconds: 200),
        animationCurve: Curves.bounceInOut,
        onTap: (index){
          setState(() {
            _currentindex = index;
          });

        },
        items: <Widget>[
          Icon(Icons.book, size: 20,),
          Icon(Icons.all_inclusive, size: 20,),
          Icon(Icons.perm_identity, size: 20,),
        ]
        ),
    );
  }
}