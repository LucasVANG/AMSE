import 'package:flutter/material.dart';


class j_v extends StatelessWidget{
  List<Widget> _saved=[];
  static List<Widget> _list = <Widget>[
    Row(
        children: <Widget>[
          Image.network('https://upload.wikimedia.org/wikipedia/fr/1/12/League_of_Legends_Logo.png'),

          Column(
            children: const <Widget>[
              Text('Place Titre'),
              Text('League of Legends (abrégé LoL) est un jeu vidéo sorti en 2009 de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS. '),
            ],
          ),
                  
        ],
      ),
    Row(
        children: <Widget>[
          Image.network('https://upload.wikimedia.org/wikipedia/fr/2/28/Europa_Universalis_4_Logo.png'),

          Column(
            children: const <Widget>[
              Text('Place Titre2'),
              Text('Place énoncé2'),
            ],
          ),
                 
        ],
      ),
    Row(
        children: <Widget>[
          Image.network('https://upload.wikimedia.org/wikipedia/fr/9/9a/Total_War_Warhammer_2_Logo.png'),

          Column(
            children: const <Widget>[
              Text('Place Titre3'),
              Text('Place énoncé3'),
            ],
          ),
                 
        ],
      ),
    Row(
        children: <Widget>[
          Image.network('https://c8.alamy.com/zoomsfr/9/6ca261a24190433f90b422fccf54186e/2cbyxtc.jpg'),

          Column(
            children: const <Widget>[
              Text('Place Titre4'),
              Text('Place énoncé4'),
            ],
          ),
              
        ],
      ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.separated(
            itemCount: _list.length,
            // The list items
            itemBuilder: (context, index) {
              return
              Row(
                children:<Widget>[
                  _list[index],
                  IconButton(
                    icon:Icon(
                      Icons.favorite,
                      color:Colors.red),
                    onPressed: (){
                      _saved.add(_list[index]);
                      print(_saved.length);
                    }
                  ),
                ],
              );
      

                
            },
            // The separators
            separatorBuilder: (context, index) {
              return Divider(
                color: Theme.of(context).primaryColor,
              );
            }),
      ),
    );
  }
}






