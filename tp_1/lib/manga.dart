import 'package:flutter/material.dart';


class Manga extends StatelessWidget{
  List<Widget> _savedM=[];
  
  @override
  Widget build(BuildContext context) {
    final List<Widget> _list = <Widget>[
    Row(
        children: <Widget>[
          Image.asset('assets/images/OnePiece.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("One Piece (ワンピース, Wan Pīsu) est une série de mangas shōnen créée par Eiichirō Oda.")
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/Mashle.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("Mashle: Magic and Muscles (マッシュル, Masshuru?) est un shōnen manga écrit et dessiné par Hajime Komoto. ")
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/OnePunchMan.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("One-Punch Man (ワンパンマン, Wanpanman?) est un manga en ligne écrit par ONE et dessiné par Yūsuke Murata.")
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/Akame.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("Red Eyes Sword: Akame ga Kill! (アカメが斬る!, Akame ga Kiru!?)est une série de mangas écrite par Takahiro et illustrée par Tetsuya Tashiro.")
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/Nichijo.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("Nichijō (日常?) est un manga écrit et illustré par Keiichi Arawi.")
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/Gintama.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("Gintama (銀魂, Gintama?, litt. « Âme d'argent ») est un shōnen manga écrit et illustré par Hideaki Sorachi.")
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/Durarara.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("Durarara!! (デュラララ!!, Dyurarara!! ou DRRR!!?) est une série de light novels japonais écrite par Ryōgo Narita et illustrée par Suzuhito Yasuda.")
          )       
        ],
      ),
    Row(
        children: <Widget>[
          Image.asset('assets/images/MHA.jpeg',
            width: MediaQuery.of(context).size.width *0.40,
            height: MediaQuery.of(context).size.height *0.2,
          )
          ,
          const Expanded(
            child:
              Text("My Hero Academia (僕のヒーローアカデミア, Boku no Hīrō Akademia?) est un shōnen manga écrit et dessiné par Kōhei Horikoshi.")
          )       
        ],
      ),
    ];
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

                      color:_savedM.contains(_list[index]) ? Colors.red : null,

                    ),
                    onPressed: (){
                      if(_savedM.contains(_list[index])){
                        _savedM.remove(_list[index]);
                        print(_savedM.length);

                      }
                      else {
                        _savedM.add(_list[index]);
                        print(_savedM.length);
                      }
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