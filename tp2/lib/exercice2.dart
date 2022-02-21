import 'package:flutter/material.dart';
import 'dart:math' as math;






class Exercice2 extends StatefulWidget {
  const Exercice2({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<Exercice2> createState() => _Exercice2State();
}

class _Exercice2State extends State<Exercice2> {
  double _currentSliderValueZ = 0;
  double _currentSliderValueX = 0;
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
   
        title: Text(widget.title),
      ),
      body: Center(
        child:
        Container(
          color: Colors.black,
          child:
          Column(
            children:<Widget>[
              Expanded (
                child:
                  Container(
                    color: Colors.black,
                    child:
                     Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.skewY(0)..rotateZ(-_currentSliderValueZ*math.pi / 24.0),
                      
                      child:
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.skewY(0)..rotateX(-_currentSliderValueX*math.pi / 24.0),
                          
                          child:Image.network('https://picsum.photos/512/1024'),
          
                        ),
                    ),
                  ),
              ),
              Slider(
                value: _currentSliderValueZ,
                max: 100,
                divisions: 100,
                label: _currentSliderValueZ.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValueZ = value;
                  });
                }
              ),
              Slider(
                value: _currentSliderValueX,
                max: 100,
                divisions: 100,
                label: _currentSliderValueX.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValueX = value;
                  });
                }
              )

              
            ]
          )
        ),
      ) 
    );
  }
}