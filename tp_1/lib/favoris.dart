import 'ressources.dart';

import 'package:flutter/material.dart';






class FavorisPage extends StatelessWidget {
  const FavorisPage({Key? key}) : super(key: key);

  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListeMedia.fromMedia(filtrage_liked(listemed)),
    );
  }

 
}