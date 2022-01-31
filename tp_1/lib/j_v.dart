import 'package:flutter/material.dart';
class J_v extends StatelessWidget {
  const J_v({Key? key}) : super(key: key);

  // #docregion build
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Liste_Jeux(),
    );
  }

 
}
 class Liste_Jeux extends StatefulWidget {
  const Liste_Jeux({Key? key}) : super(key: key);

  @override
  State<Liste_Jeux> createState() => _StateListe_Jeux();
}


List<Widget> _savedJeux=[];

  // #enddocregion build
class _StateListe_Jeux extends State<Liste_Jeux>{
  
  List<Widget> _list=[];
  
  _StateListe_Jeux(){
    _list = <Widget>[
    Row(
        children: <Widget>[
          Image.asset('assets/images/LoL.png',
            width: 100,
            height: 100,
          )
          ,
          const Expanded(
            child:
              Text('League of Legends (abrégé LoL) est un jeu vidéo sorti en 2009 de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS. ')
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/eu.png',
          width:  100,
          height:  100,
          )
          ,
          const Expanded(
            child:
              Text('Europa Universalis 4 est un jeu de grande stratégie historique développé par la société suédoise Paradox Development Studio et édité par Paradox Interactive.')
          )

          
                 
        ],
      ),
    Row(
      children: <Widget>[
        Image.asset('assets/images/TWW2.png',
        width:  100,
        height:  100),

        const Expanded(
          child:
            Text('Total War: Warhammer 2 est un jeu vidéo de stratégie au tour par tour et de tactique en temps réel développé par Creative Assembly et édité par Sega.')
        )
                 
      ],
    ),
    Row(
       children: <Widget>[
        Image.asset('assets/images/Valorant.png',
        width:  100,
        height:  100,),

        const Expanded(
          child:
            Text('Valorant  est un jeu vidéo free-to-play de tir à la première personne en multijoueur développé et édité par Riot Games et sorti le 2 juin 2020. ')
        )
              
      ],
    ),
    Row(
      children: <Widget>[
        Image.asset('assets/images/hoi4.jpeg',
        width:  100,
        height:  100,),

        const Expanded(
          child:
            Text("Hearts of Iron 4 est un jeu vidéo développé par Paradox Development Studio faisant partie de la saga Hearts of Iron. ")
        )
              
      ],
    ),
    Row(
      children: <Widget>[
        Image.asset('assets/images/Csgo.jpeg',
        width: 100,
        height:  100,),

        const Expanded(
          child:
            Text("Counter-Strike: Global Offensive (abrégé CS:GO) est un jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe développé par Valve Corporation.")
        )
              
      ],
    ),
    Row(
       children: <Widget>[
        Image.asset('assets/images/ck3.jpeg',
        width:  100,
        height:  100,),

        const Expanded(
          child:
            Text('Crusader Kings III est un jeu vidéo de grande stratégie développé par Paradox Development Studio sorti le 1er septembre 2020. ')
        )
              
      ],
    )

  ];


  }
  
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
                  Expanded(
                    child:_list[index]),
                  IconButton(
                    icon:Icon(
                      Icons.favorite,

                      color:_savedJeux.contains(_list[index]) ? Colors.red : null,

                    ),
                    onPressed: (){
                      setState(() {
                        if(_savedJeux.contains(_list[index])){
                        _savedJeux.remove(_list[index]);
                        

                        }
                        else {
                          _savedJeux.add(_list[index]);
                          
                          
                        }
                      });
                      print(_savedJeux.length);
                      
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






