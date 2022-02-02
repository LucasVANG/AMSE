library tp_1.listemedia;

class Media {
  String image="";
  String enonce="";
  String titre="";
  bool isLiked = false;

  Media(String s1,String s2,String s3){
    titre=s1;
    image=s2;
    enonce=s3;
  }

  void toggleLike() {
    isLiked = !isLiked;
  }

}

List<Media> listemed=[
  Media('League of Legends','assets/images/LoL.png','League of Legends (abrégé LoL) est un jeu vidéo sorti en 2009 de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS. '),
  Media('Europa Universalis IV','assets/images/eu.png','Europa Universalis 4 est un jeu de grande stratégie historique développé par la société suédoise Paradox Development Studio et édité par Paradox Interactive.'),
  Media('Total War : Warhammer 2','assets/images/TWW2.png','Total War: Warhammer 2 est un jeu vidéo de stratégie au tour par tour et de tactique en temps réel développé par Creative Assembly et édité par Sega.'),
  Media('Valorant','assets/images/Valorant.png','Valorant  est un jeu vidéo free-to-play de tir à la première personne en multijoueur développé et édité par Riot Games et sorti le 2 juin 2020. '),
  Media('Hearts of Iron IV','assets/images/hoi4.jpeg',"Hearts of Iron 4 est un jeu vidéo développé par Paradox Development Studio faisant partie de la saga Hearts of Iron. "),
  Media('Counter-Strike: Global Offensive','assets/images/Csgo.jpeg',"Counter-Strike: Global Offensive (abrégé CS:GO) est un jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe développé par Valve Corporation."),
  Media('Crusader King III','assets/images/ck3.jpeg','Crusader Kings III est un jeu vidéo de grande stratégie développé par Paradox Development Studio sorti le 1er septembre 2020. '),
];