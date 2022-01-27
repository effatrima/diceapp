import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(),);
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages=[
    Container(
      color: Color(0xff7f8fa6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('images/82791170.jpg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              children: [
                Text('Moon',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40),),
                Text('Moon Light',style: TextStyle(color: Colors.brown),),
              ],
            ),
          ),
        ],
      ),

    ),
    Container(
      color: Color(0xffa29bfe),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('images/Health-Tips-Moon-i513399433.jpeg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              children: [
                Text('MoonNight',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40),),
                Text('Moon Light',style: TextStyle(color: Colors.brown),),
              ],
            ),
          ),
        ],
      ),

    ),
    Container(
      color: Color(0xff192a56),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('images/night-sky-full-moon-house-600w-640408570.webp'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              children: [
                Text('MoonNight',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40),),
                Text('Moon Light',style: TextStyle(color: Colors.red),),
              ],
            ),
          ),
        ],
      ),

    ),
    Container(
      color: Color(0xff273c75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('images/silhouette-two-soft-hearts-front-260nw-1600097518.jpg'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30,),
            child: Column(
              children: [
                Text('MoonNight',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 40),),
                Text('Moon Light',style: TextStyle(color: Colors.red),),
              ],
            ),
          ),
        ],
      ),

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableLoop: true,
        fullTransitionValue: 600,
        enableSideReveal: true,
      ),

    );
  }
}

