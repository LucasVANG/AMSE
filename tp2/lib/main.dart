import 'package:flutter/material.dart';
import 'exercice1.dart';
import 'exercice2.dart';
import 'exercice4.dart';
import 'exercice5.dart';
import 'exercice5_2.dart';
import 'exercice5_3.dart';
import 'exercice6.dart';
import 'exercice6_2.dart';
import 'final.dart';


class Exercice {
  final String titre;
  final String numero;
  const Exercice(this.titre, this.numero);
}
const List<Exercice> exercices = [
  Exercice("Simple image", "1"),
  Exercice("Transformer une image", "2"),
  Exercice("Affichage d'une tuile", "4"),
  Exercice("Plateau de tuiles", "5"),
  Exercice("Image découpée", "5_2"),
  Exercice("Plateau variable", "5_3"),
  Exercice("Animer un plateau", "6"),
  Exercice("Inverser des cases","6_2"),
  Exercice("Jeu de Taquin final","7")
];

class WidgetExercice extends StatefulWidget {
  const WidgetExercice({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<WidgetExercice> createState() => _WidgetExercice();
}
class _WidgetExercice extends State<WidgetExercice> {
  @override
  Widget build(BuildContext context) {
    Exercice exTmp=exercices.firstWhere((e) => e.titre == widget.title);
    for (var i in exercices){
      if(i.titre==widget.title){
        exTmp=i;
      }
    }
    if(exTmp.numero=="1")return Exercice1(title:widget.title);
    if(exTmp.numero=="2")return Exercice2(title:widget.title);
    if(exTmp.numero=="4")return Exercice4(title:widget.title);
    if(exTmp.numero=="5")return Exercice5(title:widget.title);
    if(exTmp.numero=="5_2")return Exercice5_2(title:widget.title);
    if(exTmp.numero=="5_3")return Exercice5_3(title:widget.title);
    if(exTmp.numero=="6")return Exercice6(title:widget.title);
    if(exTmp.numero=="6_2")return Exercice6_2(title:widget.title);
    return Exercice7(title:widget.title);
  }
}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'tp2',
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Selection des exercices'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final double cWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top:5,bottom:5),
        itemCount: exercices.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: Text(exercices[index].numero),
              title: Text(exercices[index].titre),
              trailing: const Icon(Icons.arrow_forward_ios_rounded,),
              onTap:(){
                  Navigator.push(
                  context, 
                  MaterialPageRoute(
                    
                    builder: (context) => WidgetExercice(title:exercices[index].titre)
                  ),
                );
               
              },
            ),
          );
        },
      ),
      
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(height: cWidth*0.10),
      ),
    );
  }
}
