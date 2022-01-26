import 'package:flutter/material.dart';


class Manga extends StatelessWidget{
  @override
    Widget build(BuildContext context){
      return Container(
        padding:EdgeInsets.all(25.0),
        child:Text('manga', style: TextStyle(fontSize: 36.0)),
      );
    }
}