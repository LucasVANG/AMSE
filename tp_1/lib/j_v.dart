import 'listemedia.dart';

import 'package:flutter/material.dart';






class JeuxVideoPage extends StatelessWidget {
  const JeuxVideoPage({Key? key}) : super(key: key);

  // #docregion build
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListeJeux(),
    );
  }

 
}
 class ListeJeux extends StatefulWidget {
  const ListeJeux({Key? key}) : super(key: key);

  @override
  State<ListeJeux> createState() => _StateListeJeux();
}




  // #enddocregion build
class _StateListeJeux extends State<ListeJeux>{
 
  

  // _StateListeJeux(){
  // }
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(
            itemCount: listemed.length,
            // The list items
            itemBuilder: (context, index) {
              return
              Row(
                children:<Widget>[
                    Expanded(
                      child:
                        InkWell(                        
                          child: 
                            Row(
                              children: <Widget>[
                                Image.asset(listemed[index].image,
                                width:  100,
                                height:  100),

                                Expanded(
                                  child:
                                    Text(listemed[index].titre,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold))
                                )                  
                               ],
                            ),      
                          onTap: () {                          
                            showDialog(
                              context: context,
                              builder: (BuildContext context) => information(context,index),
                            );
                          },                      
                        )
                      
                    ),
                  IconButton(
                    icon:Icon(
                      Icons.favorite,

                      color: listemed[index].isLiked ? Colors.red : null,

                    ),
                    onPressed: (){
                      setState(() {
                        listemed[index].toggleLike();


                      });
                      
                      
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
  Widget information(BuildContext context,int i) {
  return AlertDialog(
    title: Text(listemed[i].titre,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold)),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(listemed[i].enonce,textAlign: TextAlign.center),
        Image.asset(listemed[i].image)
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Close'),
      ),
    ],
  );
}
}






