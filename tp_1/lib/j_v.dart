import 'package:flutter/material.dart';
List<media> _savedJeux=[];
class media {
  String image="";
  String enonce="";
  media(String s1,String s2){
    image=s1;
    enonce=s2;
  }

}


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




  // #enddocregion build
class _StateListe_Jeux extends State<Liste_Jeux>{

  
  media j1=new media('assets/images/LoL.png','League of Legends (abrégé LoL) est un jeu vidéo sorti en 2009 de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS. ');
  media j2=new media('assets/images/eu.png','Europa Universalis 4 est un jeu de grande stratégie historique développé par la société suédoise Paradox Development Studio et édité par Paradox Interactive.');
  media j3=new media('assets/images/TWW2.png','Total War: Warhammer 2 est un jeu vidéo de stratégie au tour par tour et de tactique en temps réel développé par Creative Assembly et édité par Sega.');
  media j4=new media('assets/images/Valorant.png','Valorant  est un jeu vidéo free-to-play de tir à la première personne en multijoueur développé et édité par Riot Games et sorti le 2 juin 2020. ');
  media j5=new media('assets/images/hoi4.jpeg',"Hearts of Iron 4 est un jeu vidéo développé par Paradox Development Studio faisant partie de la saga Hearts of Iron. ");
  media j6=new media('assets/images/Csgo.jpeg',"Counter-Strike: Global Offensive (abrégé CS:GO) est un jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe développé par Valve Corporation.");
  media j7=new media('assets/images/ck3.jpeg','Crusader Kings III est un jeu vidéo de grande stratégie développé par Paradox Development Studio sorti le 1er septembre 2020. ');
  List<media> listemed=[];
  

  _StateListe_Jeux(){
    listemed=<media>[j1,j2,j3,j4,j5,j6,j7];
    


  }
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.separated(
            itemCount: listemed.length,
            // The list items
            itemBuilder: (context, index) {
              return
              Row(
                children:<Widget>[
                  Expanded(
                    child:
                    Row(
                      children: <Widget>[
                        Image.asset(listemed[index].image,
                        width:  100,
                        height:  100),

                        Expanded(
                          child:
                            Text(listemed[index].enonce)
                        )
                                
                      ],
                    ),
                    
                  ),
                  IconButton(
                    icon:Icon(
                      Icons.favorite,

                      color:_savedJeux.contains(listemed[index]) ? Colors.red : null,

                    ),
                    onPressed: (){
                      setState(() {
                        if(_savedJeux.contains(listemed[index])){
                        _savedJeux.remove(listemed[index]);
                        

                        }
                        else {
                          _savedJeux.add(listemed[index]);
                          
                          
                        }

                      });
                      if(_savedJeux.isEmpty){
                        print("liste vide");
                      }
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






