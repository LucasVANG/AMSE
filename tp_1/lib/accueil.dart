import 'package:flutter/material.dart';


class Accueil extends StatelessWidget{
  @override
    Widget build(BuildContext context){
      return Scaffold( 

        appBar:
          AppBar(
            title:
              Text("Accueil")
          )
        ,

        body:
          Container(

            padding:
              EdgeInsets.all(25.0),
            child:
              Text("Bienvenue sur la page d'accueil de l'application", style: TextStyle(fontSize: 20.0),textAlign: TextAlign.center,),
        )
      );
    }
}