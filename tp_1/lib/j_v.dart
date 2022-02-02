import 'listemedia.dart';

import 'package:flutter/material.dart';






class JeuxVideoPage extends StatelessWidget {
  const JeuxVideoPage({Key? key}) : super(key: key);

  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListeMedia.fromMedia(listemed),
    );
  }

 
}