import 'package:flutter/material.dart';
import 'dart:math' as math;

class Exercice5 extends StatefulWidget {
  const Exercice5({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice5> createState() => _Exercice5State();
}

class _Exercice5State extends State<Exercice5> {
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
   
        title: Text(widget.title),
      ),
      body:Center(
        child:
            Container(
                padding: const EdgeInsets.all(20),
                child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children:<Widget>[
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                        
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                            Container(
                            padding: const EdgeInsets.all(8),
                            
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                            ),
                        ],
                    ),
                )
        )
    );
  }
}