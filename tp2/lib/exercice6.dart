import 'package:flutter/material.dart';
import 'dart:math';

class Tile {
  Color? color;
  Tile(this.color);
  Tile.randomColor() {
    color = Color.fromARGB(
        255, Random().nextInt(255), Random().nextInt(255), Random().nextInt(255));
  }
}

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key, required this.tile}) : super(key: key);
  final Tile tile;
  
  @override
  Widget build(BuildContext context) {
    return coloredBox();
  }

  Widget coloredBox() {
    return Container(
      color: tile.color,
      child: const Padding(
        padding: EdgeInsets.all(70.0),
      )
    );
  }
}

class Exercice6 extends StatefulWidget {
  const Exercice6({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice6> createState() => _Exercice6State();
}


class _Exercice6State extends State<Exercice6> {
  List<Widget> tiles =
      List<Widget>.generate(2, (index) => TileWidget(tile: Tile.randomColor(),));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Row(children: tiles),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
    );
  }

  swapTiles() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }
}


