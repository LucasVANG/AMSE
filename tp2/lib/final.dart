import 'package:flutter/material.dart';
import 'dart:math' as math;

class Exercice7 extends StatefulWidget {
  const Exercice7({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice7> createState() => _Exercice7State();
}
class Tile{
    String imageURL;
    int status;
    Alignment alignment;
    double rapport;
    Tile(this.imageURL,this.status,this.alignment,this.rapport);
}

class TileWidget extends StatelessWidget{
    const TileWidget({Key? key,required this.tile}) : super(key:key);
    final Tile tile;
    @override
    Widget build(BuildContext context){
        if(tile.status==2){
            return tileActive(tile);
        }
        else{
            return tileNonActive(tile);
        }
    }

    Widget tileActive(Tile tile){
        return Container(
            
        );
    }
    Widget tileNonActive(Tile tile){
        return FittedBox(
            fit: BoxFit.fill,
            child: ClipRect(
                child: Container(
                child: Align(
                    alignment: tile.alignment,
                    widthFactor: tile.rapport,
                    heightFactor: tile.rapport,
                    child: Image.network(tile.imageURL),
                ),
                ),
            ),
        );
    }
}
class _Exercice7State extends State<Exercice7>{
    int nbdiv=4;
    int indexactif=4;
    List<Tile> tiles=[];
    @override
    Widget build(BuildContext context){
        actuListeTiles();
        return Scaffold(
            appBar: AppBar(
        
                title: Text(widget.title),
            ),
            body: 
            Center(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child:GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:nbdiv),
                        itemCount: tiles.length,
                        itemBuilder:(context,index){
                            return InkWell(
                                child:Container(
                                    padding:const EdgeInsets.all(1),
                                    child:TileWidget(tile:tiles[index]),
                                ),
                                onTap:(){
                                    setState((){
                                        echange(index);

                                    });
                                },
                            );
                        }
                    )
                )
                
            )
        );
    }

    void actuListeTiles(){
        if(tiles.isEmpty){
            for (int i=0;i<nbdiv;i++){
          for (int j=0;j<nbdiv;j++){
              tiles.add(Tile('https://picsum.photos/512',0,Alignment(-1+2*j/(nbdiv-1),-1+2*i/(nbdiv-1)),1/nbdiv));

          }
      }
        }
        for (int i=0; i<nbdiv*nbdiv;i++){
            if(i==indexactif){
                tiles[i].status=2;
            }
            else if(switchable(i)){
                tiles[i].status=1;
            }
            else{
                tiles[i].status=0;
            }

        }
    }
    bool switchable(int i){
    if(i==indexactif+1 && i%nbdiv!=0){
        return true;

    }
    else if (i==indexactif-1 && i%nbdiv!=nbdiv-1){
        return true;

    }
    else if (i==indexactif+nbdiv && indexactif<=(nbdiv-1)*nbdiv-1){
        return true;
    }
    else if(i==indexactif-nbdiv && indexactif>=nbdiv){
        return true;
    }
    return false;

    }
    void echange(int i){
        if(tiles[i].status==1){
            Tile tmp=tiles[indexactif];
            tiles[indexactif]=tiles[i];
            tiles[i]=tmp;
            indexactif=i;
        }
    }
}
