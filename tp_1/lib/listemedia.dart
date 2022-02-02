library tp_1.listemedia;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Media {
  String image="";
  String enonce="";
  String titre="";
  String image2="";
  bool isLiked = false;

  Media(String s1,String s2,String s3,String s4){
    titre=s1;
    image=s2;
    image2=s3;
    enonce=s4;
  }

  void toggleLike() {
    isLiked = !isLiked;
  }

}

List<Media> listemed=[
  Media('League of Legends','assets/images/LoL.png','assets/images/Lolig.jpeg','League of Legends (abrégé LoL) est un jeu vidéo sorti en 2009 de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS. '),
  Media('Europa Universalis IV','assets/images/eu.png','assets/images/Eu4ig.jpg','Europa Universalis 4 est un jeu de grande stratégie historique développé par la société suédoise Paradox Development Studio et édité par Paradox Interactive.'),
  Media('Total War : Warhammer 2','assets/images/TWW2.png','assets/images/TWW2ig.jpg','Total War: Warhammer 2 est un jeu vidéo de stratégie au tour par tour et de tactique en temps réel développé par Creative Assembly et édité par Sega.'),
  Media('Valorant','assets/images/Valorant.png','assets/images/Valorantig.jpeg','Valorant  est un jeu vidéo free-to-play de tir à la première personne en multijoueur développé et édité par Riot Games et sorti le 2 juin 2020. '),
  Media('Hearts of Iron IV','assets/images/hoi4.jpeg','assets/images/hoi4ig.jpg',"Hearts of Iron 4 est un jeu vidéo développé par Paradox Development Studio faisant partie de la saga Hearts of Iron. "),
  Media('Counter-Strike: Global Offensive','assets/images/Csgo.jpeg','assets/images/Csgo.jpeg',"Counter-Strike: Global Offensive (abrégé CS:GO) est un jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe développé par Valve Corporation."),
  Media('Crusader King III','assets/images/ck3.jpeg','assets/images/ck3ig.jpeg','Crusader Kings III est un jeu vidéo de grande stratégie développé par Paradox Development Studio sorti le 1er septembre 2020. '),
];

class ListeMedia extends StatefulWidget {

  List<Media> list;

  ListeMedia.fromMedia(List<Media> liste, {Key? key}) : list = liste, super(key: key) ;

  @override
  State<ListeMedia> createState() => _StateListeMedia(list);
}

class _StateListeMedia extends State<ListeMedia>{
  List<Media> list=[];
  _StateListeMedia(List<Media> liste){
    list=liste;

  }
  
  Widget build(BuildContext context){
    return this.liste(context, list);
  }
  Widget liste(BuildContext context,List<Media> liste){
    return Scaffold(
        appBar: AppBar(
          title: Text("Jeux-Videos"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.separated(
              itemCount: listemed.length,
              // The list items
              itemBuilder: (context, index) {
                return
                Row(
                  children:<Widget>[
                      Expanded(
                        child:
                          InkWell(                        
                            child: 
                              Row(
                                children: <Widget>[
                                  Image.asset(listemed[index].image,
                                  width:  100,
                                  height:  100),

                                  Expanded(
                                    child:
                                      Text(listemed[index].titre,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold))
                                  )                  
                                ],
                              ),      
                            onTap: () {                          
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>information(context,index)));
                            },                      
                          )
                        
                      ),
                    IconButton(
                      icon:Icon(
                        Icons.favorite,

                        color: listemed[index].isLiked ? Colors.red : null,

                      ),
                      onPressed: (){
                        setState(() {
                          listemed[index].toggleLike();


                        });
                        
                        
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
  Widget information(BuildContext context,int i) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Description:" + listemed[i].titre),
        ),
    );
    }
}