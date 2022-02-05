library tp_1.ressources;

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Media {
  String categorie="";
  String image="";
  String enonce="";
  String titre="";
  String image2="";
  bool isLiked = false;

  Media(String s1,String s2,String s3,String s4,String s5){
    categorie=s1;
    titre=s2;
    image=s3;
    image2=s4;
    enonce=s5;
  }

  void toggleLike() {
    isLiked = !isLiked;
  }

}
List<Media> filtrage(String s){
  List<Media> liste_filtree=[];
  for(var item in listemed){
    if(item.categorie==s){
      liste_filtree.add(item);
    }
  }
  return liste_filtree;
}

List<Media> filtrage_liked(List<Media> liste){
  List<Media> liste_filtree=[];
  for(var item in listemed){
    if(item.isLiked==true){
      liste_filtree.add(item);
    }
  }
  return liste_filtree;
}
List<Media> listemed=[
  Media('Jeux-Videos','League of Legends','assets/images/LoL.png','assets/images/Lolig.jpeg',"League of Legends (abrégé LoL) est un jeu vidéo sorti en 2009 de type arène de bataille en ligne, free-to-play, développé et édité par Riot Games sur Windows et Mac OS.Le mode principal du jeu voit s'affronter deux équipes de 5 joueurs en temps réel dans des parties d'une durée d'environ une demi-heure, chaque équipe occupant et défendant sa propre base sur la carte. Chacun des dix joueurs contrôle un personnage à part entière parmi les plus de 150 qui sont proposés."),
  Media('Jeux-Videos','Europa Universalis IV','assets/images/eu.png','assets/images/Eu4ig.jpg',"Europa Universalis 4 est un jeu de grande stratégie historique développé par la société suédoise Paradox Development Studio et édité par Paradox Interactive.Ce jeu propose au joueur de prendre la tête d'un pays parmi plusieurs centaines disponibles, allant de l'Amérique précolombienne à l'Europe à l'aube de la Renaissance, et d'en gérer l'économie, la diplomatie, la technologie et l'armée sur une période allant du 11 novembre 1444 (lendemain de la bataille de Varna) au 2 janvier 1821 (après le Congrès de Vienne)"),
  Media('Jeux-Videos','Total War : Warhammer 2','assets/images/TWW2.png','assets/images/TWW2ig.jpg','Total War: Warhammer 2 est un jeu vidéo de stratégie au tour par tour et de tactique en temps réel développé par Creative Assembly et édité par Sega.Il introduit quatre races : les Hommes-Lézards, les Haut-Elfes, les Elfes Noirs et les Skavens. Le studio de développement a annoncé que les cartes de Total War: Warhammer et Total War: Warhammer 2 pourront être fusionnées gratuitement pour créer une campagne gigantesque quelques semaines après la sortie du jeu'),
  Media('Jeux-Videos','Valorant','assets/images/Valorant.png',"assets/images/Valorantig.jpeg","Valorant  est un jeu vidéo free-to-play de tir à la première personne en multijoueur développé et édité par Riot Games et sorti le 2 juin 2020.Dans le mode de jeu principal, deux équipes de cinq joueurs s'affrontent et les agents utilisent un système économique pour acheter des utilitaires et des armes. Une équipe est en attaque et une est en défense : l'équipe attaquante dispose d'une bombe qu'elle doit poser sur un site. Si elle est suffisamment protégée et qu'elle explose, les attaquants gagnent un point. "),
  Media('Jeux-Videos','Hearts of Iron IV','assets/images/hoi4.jpeg','assets/images/hoi4ig.jpg',"Hearts of Iron 4 est un jeu vidéo développé par Paradox Development Studio faisant partie de la saga Hearts of Iron. Le jeu permet de prendre le contrôle de n'importe quel pays existant à une des deux époques disponibles pour débuter une partie : le 1er janvier 1936 et le 14 août 1939. Plusieurs modes de jeu sont disponibles: le mode Ironman qui empêche la création de sauvegarde, le joueur ne pouvant revenir en arrière et reprennent leur partie là où ils l'ont quitté. Ironman doit être activé pour remporter des succès. L'autre mode de jeux est le choix de l'ia historique ou non, activé, l'ia va prendre les mêmes décisions que dans la réalité et reproduire la Seconde guerre mondiale, si l'ia historique n'est pas activé alors elle pourra prendre des décisions uchroniques.  "),
  Media('Jeux-Videos','Counter-Strike: Global Offensive','assets/images/Csgo.jpeg','assets/images/Csgo.jpeg',"Counter-Strike: Global Offensive (abrégé CS:GO) est un jeu de tir à la première personne multijoueur en ligne basé sur le jeu d'équipe développé par Valve Corporation. Le jeu est divisé en dix modes, qui sont les suivants : Occasionnel, Démolition, Sniper volant, Match à mort par équipe, Course à l'armement, Zone de Danger, «  retakes », Gardien, Compétitif et Wingman. "),
  Media('Jeux-Videos','Crusader King III','assets/images/ck3.jpeg','assets/images/ck3ig.jpeg',"Crusader Kings III est un jeu vidéo de grande stratégie développé par Paradox Development Studio sorti le 1er septembre 2020. Le jeu est un simulateur de dynastie où l'on contrôle une dynastie médiévale, de 867 ou 1066 à 1453, dates respectives de l'ère Viking ou de la conquête normande de l'Angleterre et de la chute de Constantinople"),
  Media('Manga','One Piece','assets/images/OnePiece.jpeg','assets/images/OnePiece2.jpeg',"One Piece (ワンピース, Wan Pīsu) est une série de mangas shōnen créée par Eiichirō Oda.\n\n L'histoire suit les aventures de Monkey D. Luffy, un garçon dont le corps a acquis les propriétés du caoutchouc après avoir mangé par inadvertance un fruit du démon. Avec son équipage de pirates, appelé l'équipage de Chapeau de paille, Luffy explore Grand Line à la recherche du trésor ultime connu sous le nom de « One Piece » afin de devenir le prochain roi des pirates. "),
  Media('Manga','Mashle','assets/images/Mashle.jpeg','assets/images/Mashle2.jpeg',"Mashle: Magic and Muscles (マッシュル, Masshuru?) est un shōnen manga écrit et dessiné par Hajime Komoto.\n\n Dans un monde où la magie est omniprésente, un jeune garçon du nom de Mash Burnedead passe ses journées à la musculation et à manger des choux à la crème. Mais un jour, un policier découvre son secret, il n'a pas de pouvoir magique, ce qui est puni de mort. Pour survivre, il doit postuler à l'académie de magie d'Easton et devenir le nouvel Elu Divin, ou le policier le livrera aux autorités. "),
  Media('Manga','One Punch Man','assets/images/OnePunchMan.jpeg','assets/images/OnePunchMan2.jpeg',"One-Punch Man (ワンパンマン, Wanpanman?) est un manga en ligne écrit par ONE et dessiné par Yūsuke Murata.\n\n Saitama est un homme de bureau déprimé, jusqu'au jour ou cerains évenements le décide à devenir un super héros. Mais à la fin de son entraînement il se rend compte qu'il est devenu trop puissant, et qu'il finit tous ses combats en un seul coup de poing"),
  Media('Manga','Akame ga kill','assets/images/Akame.jpeg','assets/images/Akame2.jpeg',"Red Eyes Sword: Akame ga Kill! (アカメが斬る!, Akame ga Kiru!?)est une série de mangas écrite par Takahiro et illustrée par Tetsuya Tashiro.\n\nTatsumi est un combattant qui part pour la capitale à la recherche d'un moyen de gagner de l'argent pour aider son village pauvre. Après avoir été victime d'un vol par une femme et avoir perdu tout son argent, Tatsumi est pris en charge par une aristocrate du nom d'Aria. La nuit suivante, le manoir d'Aria est attaqué par un groupe d'assassins connus sous le nom de Night Raid."),
  Media('Manga','Nichijo','assets/images/Nichijo.jpeg','assets/images/Nichijo2.jpeg',"Nichijō (日常?) est un manga écrit et illustré par Keiichi Arawi.\n\nLa série suit la vie quotidienne de diverses personnes dans la ville de Tokisadame, notamment l'énergique Yūko Aioi, la brillante et joyeuse Mio Naganohara, la calme et impassible Mai Minakami, l'androïde inquiète Nano Shinonome, sa jeune créatrice la professeure et Sakamoto, un chat doué de parole. "),
  Media('Manga','Gintama','assets/images/Gintama.jpeg','assets/images/Gintama2.jpeg',"Gintama (銀魂, Gintama?, litt. « Âme d'argent ») est un shōnen manga écrit et illustré par Hideaki Sorachi.\n\nÀ l'ère Edo, le Japon est envahi par des extraterrestres appelés Amanto. Ceux-ci parviennent à vaincre les samouraï. Dès lors, une futurition radicale tranchant avec le décor classique du Japon se met en place et les Amanto interdisent le port du sabre en public. Malgré tout, il en reste qui préfèrent conserver leur bushido. Dans ce Japon subsistent ainsi des personnes qui refusent d'abandonner leur sabre. Parmi eux, Gintoki Sakata, ancien samouraï excentrique."),
  Media('Manga','Durarara!!','assets/images/Durarara.jpeg','assets/images/Durarara2.jpeg',"Durarara!! (デュラララ!!, Dyurarara!! ou DRRR!!?) est une série de light novels japonais écrite par Ryōgo Narita et illustrée par Suzuhito Yasuda.\n\nMikado Ryūgamine est un jeune adolescent qui rêve de la vie excitante des grandes villes. Il est ensuite transféré à un lycée de Tokyo. Son ami lui dit alors de se tenir à distances de deux chose:un homme violent habillé comme un barman, un informateur et un gang mystérieux appelé 'Dollars'."),
  Media('Manga','My Hero Academia','assets/images/MHA.jpeg','assets/images/MHA2.jpeg',"My Hero Academia (僕のヒーローアカデミア, Boku no Hīrō Akademia?) est un shōnen manga écrit et dessiné par Kōhei Horikoshi.\n\n Dans un monde où 80 % de la population mondiale possède des super-pouvoirs, ici nommés « Alters » (個性, Kosei?), on suit les aventures de Izuku Midoriya, l'un des rares humains ne possédant pas d'Alter. Malgré cela, Izuku rêve pourtant de rejoindre la filière super-héroïque de la grande académie Yuei (勇井高校, Yūei Kōkō?) et de devenir un jour un des plus grands héros de son époque. "),
  Media('Manga','Vinland Saga','assets/images/Vinland.jpg','assets/images/Vinland2.jpg',"Vinland Saga (ヴィンランド･サガ, Vinrando Saga?) est un manga historique écrit et dessiné par le mangaka Makoto Yukimura.\n\nMêlant personnages et évènements historiques avec de nombreux éléments fictifs, Vinland Saga est le récit de la vie d'un jeune islandais, Thorfinn Thorsson. Ce fils d'un illustre guerrier repenti verra sa vie basculer lorsque son père est assassiné par des pirates menés par le rusé Askeladd. Animé par la vengeance, Thorfinn suivra puis intégrera cette bande, avec le désir affiché de tuer dans un duel loyal l'assassin de son père. ")
];

class ListeMedia extends StatefulWidget {

  List<Media> list;

  ListeMedia.fromMedia(List<Media> liste, {Key? key}) : list = liste, super(key: key) ;

  @override
  State<ListeMedia> createState() => _StateListeMedia(list);
}

class _StateListeMedia extends State<ListeMedia>{
  List<Media> list=[];
  String nameAppbar="Favoris";
  _StateListeMedia(List<Media> liste){
    list=liste;
    if(list.isNotEmpty){
      nameAppbar=list[0].categorie;
    }

  }
  
  Widget build(BuildContext context){
    return this.liste(context, list);
  }
  Widget liste(BuildContext context,List<Media> liste){
    return Scaffold(
        appBar: AppBar(
          title: Text(nameAppbar),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.separated(
              itemCount: list.length,
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
                                  Image.asset(liste[index].image,
                                  width:  100,
                                  height:  100),

                                  Expanded(
                                    child:
                                      Text(liste[index].titre,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold))
                                  )                  
                                ],
                              ),      
                            onTap: () {                          
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>information(context,index,liste)));
                            },                      
                          )
                        
                      ),
                    IconButton(
                      icon:Icon(
                        Icons.favorite,

                        color: liste[index].isLiked ? Colors.red : null,

                      ),
                      onPressed: (){
                        setState(() {
                          liste[index].toggleLike();


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
  Widget information(BuildContext context,int i,List<Media> liste) {
    return Scaffold(
      appBar: AppBar(
          title: Text(liste[i].titre),
        ),
      body: Column(
        children: <Widget>[
          Text(liste[i].titre,textAlign:TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold,fontSize:25)),
         
          Expanded(
            child:
            Column(
              children:<Widget>[
                Center(
                  child:
                  Container(
                    padding: 
                      EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: 
                      Text(liste[i].enonce, style: TextStyle(fontSize: 15)))),
                Image.asset(liste[i].image2)]
            )
          )
        
        ]
      )

    );
    }
}