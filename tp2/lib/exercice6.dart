import 'package:flutter/material.dart';

class Exercice6 extends StatefulWidget {
  const Exercice6({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice6> createState() => _Exercice6State();
}
class ImageTile extends StatelessWidget{
    String imageURL;
    Alignment alignment;
    double rapport;
    ImageTile({Key? key, required this.alignment,required this.imageURL,required this.rapport}) : super(key: key);
    
    @override
    Widget build(BuildContext context){
        return FittedBox(
            fit: BoxFit.fill,
            child: ClipRect(
                child: Container(
                child: Align(
                    alignment: this.alignment,
                    widthFactor: rapport,
                    heightFactor: rapport,
                    child: Image.network(this.imageURL),
                ),
                ),
            ),
        );
    }
}
class _Exercice6State extends State<Exercice6> {
    double nbdiv = 3;
    List<ImageTile> tiles=[];
    int indexactu=2;
    bool playing=false;

    Widget createTileWidgetFrom(ImageTile tile,int i) {
    return InkWell(
      child: tile,
      onTap: () {
        print("tapped on tile $i");
        setState(() {
            this.tiles[i]==this.tiles[i-1];
   
        });
      },
    );
  }
    
    @override
  Widget build(BuildContext context) {
      actuListeTiles();
    
    return Scaffold(
      appBar: AppBar(
   
        title: Text(widget.title),
      ),
      body: Center(
        child:
        Column(
            children:<Widget>[
              Slider(
                value: nbdiv,
                min: 2,
                max: 6,
                divisions: 4,
                label: nbdiv.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    nbdiv = value;
                  });
                }
              ),
              Expanded(
               
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: nbdiv.toInt()),
                    itemCount: (nbdiv*nbdiv).toInt(),

                    itemBuilder:(context,index){
                        return createTileWidgetFrom(tiles[index],index);
                    }
                            
                    
                    )
                )
            ]
        )
      ) 
    );
  }
  actuListeTiles(){
      tiles=[];
      if (this.playing==false){
        for (int i=0;i<nbdiv;i++){
            for (int j=0;j<nbdiv;j++){
                tiles.add(ImageTile(alignment:Alignment(-1+2*j/(nbdiv-1),-1+2*i/(nbdiv-1)),imageURL:'https://picsum.photos/512',rapport:1/nbdiv));

            }
        }
      }

  }


}
