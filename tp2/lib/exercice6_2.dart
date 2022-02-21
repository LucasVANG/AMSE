import 'package:flutter/material.dart';
import 'dart:math' as math;

class Tile{
    String title;
    int status;
    Tile(this.title,this.status);
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
            child:Center(child:Text(tile.title))
        );
    }
    Widget tileNonActive(Tile tile){
        return Container(
            padding: const EdgeInsets.all(5),
            child:Container(
                decoration:BoxDecoration(color:Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0)),
                child:Center(child:Text(tile.title))
            )
        );
    }
}

class Exercice6_2 extends StatefulWidget {
  const Exercice6_2({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice6_2> createState() => _Exercice6_2State();
}

class _Exercice6_2State extends State<Exercice6_2>{
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
            for(int i=0;i<nbdiv*nbdiv;i++){
                tiles.add(Tile(i.toString(),0));
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
