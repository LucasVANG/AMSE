import 'ressources.dart';

import 'package:flutter/material.dart';






class MangaPage extends StatelessWidget {
  const MangaPage({Key? key}) : super(key: key);

  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListeMedia.fromMedia(filtrage('Manga')),
    );
  }

 
}