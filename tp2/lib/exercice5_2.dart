import 'package:flutter/material.dart';



class Exercice5_2 extends StatefulWidget {
  const Exercice5_2({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice5_2> createState() => _Exercice5_2State();
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
                    widthFactor: 0.3,
                    heightFactor: 0.3,
                    child: Image.network(this.imageURL),
                ),
                ),
            ),
        );
    }
}

class _Exercice5_2State extends State<Exercice5_2> {
    List<ImageTile> tiles = [
    ImageTile(
      alignment: Alignment.topLeft,
      rapport:1/3, 
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.topCenter,
      rapport:1/3,  
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.topRight,
      rapport:1/3,  
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.centerLeft,
      rapport:1/3,  
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.center,
      rapport:1/3, 
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.centerRight,
      rapport:1/3,  
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.bottomLeft,
      rapport:1/3,  
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.bottomCenter,
      rapport:1/3,  
      imageURL: 'https://picsum.photos/512',
    ),
    ImageTile(
      alignment: Alignment.bottomRight,
      rapport:1/3,  
      imageURL: 'https://picsum.photos/512',
    ),
  ];

@override
Widget build(BuildContext context) {
    return 
    Scaffold(
      appBar: AppBar(
   
        title: Text(widget.title),
      ),
      body:Center(
        child:
            Container(
                padding: const EdgeInsets.all(20),
                child: GridView.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    children:<Widget>[
                            tiles[0],
                            tiles[1],
                            tiles[2],
                            tiles[3],
                            tiles[4],
                            tiles[5],
                            tiles[6],
                            tiles[7],
                            tiles[8]
                            
                        ]
                    ),
                )
        )
    );
  }

}