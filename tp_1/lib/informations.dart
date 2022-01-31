import 'package:flutter/material.dart';


class Info extends StatelessWidget{
  @override
    Widget build(BuildContext context){
      return Container(
        padding:EdgeInsets.all(25.0),
        child:Text('Cette application a été réalisé par Lucas Vangaeveren', style: TextStyle(fontSize: 25.0) ,textAlign: TextAlign.center,),
      );
    }
}