import 'package:flutter/material.dart';

class Exercice5_3 extends StatefulWidget {
  const Exercice5_3({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice5_3> createState() => _Exercice5_3State();
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
class _Exercice5_3State extends State<Exercice5_3> {
    double nbdiv = 3;
    List<ImageTile> tiles=[];

    Widget createTileWidgetFrom(ImageTile tile) {
    return InkWell(
      child: tile,
      onTap: () {
        print("tapped on tile");
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
                        return createTileWidgetFrom(tiles[index]);
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
      for (int i=0;i<nbdiv;i++){
          for (int j=0;j<nbdiv;j++){
              tiles.add(ImageTile(alignment:Alignment(-1+2*j/(nbdiv-1),-1+2*i/(nbdiv-1)),imageURL:'https://picsum.photos/512',rapport:1/nbdiv));

          }
      }

  }


}
