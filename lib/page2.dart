import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_fluid_slider/flutter_fluid_slider.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:splashscreen/splashscreen.dart';
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  double _value = 0;
  String status = "Stopped";
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
    /*  floatingActionButton: FloatingActionButton(
        child: Icon(Icons.stop),
         onPressed: (){
                           setState(() {
                             status = "Stopped";
                           });
                         },
        elevation: 10,
      ),*/
      body: ListView(

        children: <Widget>[
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: 250,
              width: 200,
              color: Colors.blueAccent,
              child: Stack(
                children: <Widget>[
               /*   Container(
                    margin: EdgeInsets.only(top: 20, left: 10),
                    child: Text('DLD Project', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),)
                    ),*/
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      child: TypewriterAnimatedTextKit(
                         speed: Duration(milliseconds: 300),
                        totalRepeatCount: 1,

                        text: ['DLD Project','BS Computer Science','Submitted to ','Mr.Zahid Hussain','DLD Final Project'],
                         textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 25
                          ),
                      ),
                    ),
                    Container(
                    margin: EdgeInsets.only(top: 90, left: 10),
                    child: Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 37,
                          child: Icon(Icons.airport_shuttle, size: 40,),
                        ),
                        SizedBox(width: 15,),
                        Text('Muhammad Owais', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))
                      ],
                    )
                    ),
                    Container(
                    margin: EdgeInsets.only(top: 150, left: 150),
                    child: Text('2018-UAM-1274', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold),)
                    ),
                ],
              ),
            )
          ),
          SizedBox(height: 10,),
          Card(
            elevation: 5,
                      child: Container(
              child: Center(
                child: Text('Control The Car',style: TextStyle(color: Colors.black54, fontSize: 25, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Divider(),
           SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50),
            child: Card(
              elevation: 5,
                        child: Container(
                       height: 220,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 15,),
                     Material(
                       child: MaterialButton(
                          onPressed: (){
                           setState(() {
                             status = "Forward";
                           });
                         },
                         child: CircleAvatar(
                           backgroundColor: Colors.blue,
                           radius: 30,
                           child: Icon(Icons.arrow_drop_up,color: Colors.white,size: 40,),
                         ),
                       ),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Material(
                       child: MaterialButton(
                          onPressed: (){
                           setState(() {
                             status = "Left";
                           });
                         },
                         child: CircleAvatar(
                           backgroundColor: Colors.blue,
                           radius: 30,
                           child: Icon(Icons.arrow_left,color: Colors.white,size: 40,)),
                         ),
                       ),
                       SizedBox(width: 30,),
                       Material(
                       child: MaterialButton(
                          onPressed: (){
                           setState(() {
                             status = "Right";
                           });
                         },
                         child: CircleAvatar(
                           backgroundColor: Colors.blue,
                           radius: 30,
                           child: Icon(Icons.arrow_right,color: Colors.white,size: 40,)),
                         ),
                       ),
                       ],
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                       Material(
                       child: MaterialButton(
                         onPressed: (){
                           setState(() {
                             status = "Backward";
                           });
                         },
                         child: CircleAvatar(
                           backgroundColor: Colors.blue,
                           radius: 30,
                           child: Icon(Icons.arrow_drop_down,color: Colors.white,size: 40,)),
                         ),
                       ),
                     ],)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Card(
            elevation: 5,
                      child: Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('Status: $status', style: TextStyle(color: Colors.black54, fontSize: 22),)
              ),
          ),
          SizedBox(height: 10,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                backgroundColor: Colors.blue,
                child: IconButton(
                  icon: Icon(Icons.flash_on),
                  color: isClicked ? Colors.white: Colors.white54,
                  onPressed: (){
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                ),
                radius: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: FluidSlider(
                  
                   value: _value,
                  onChanged: (double newValue) {
                    setState(() {
                     _value = newValue;
                     });
                  },
                min: 0.0,
                max: 100.0,
),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: FloatingActionButton(
        child: Icon(Icons.stop),
         onPressed: (){
                             setState(() {
                               status = "Stopped";
                             });
                           },
        elevation: 10,
      ),
              )
            ],
          ),
        ],
      )

    );
  }
}
