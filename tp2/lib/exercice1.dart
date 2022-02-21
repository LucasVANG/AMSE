import 'package:flutter/material.dart';

class Exercice1 extends StatefulWidget {
  const Exercice1({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice1> createState() => _Exercice1State();
}

class _Exercice1State extends State<Exercice1> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
   
        title: Text(widget.title),
      ),
      body:Center(
        child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
            child: Image.network('https://picsum.photos/512'),
            ),
        ),
      )
    );
  }
}