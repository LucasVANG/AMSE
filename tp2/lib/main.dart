import 'package:flutter/material.dart';
import 'exercice1.dart';
import 'exercice2.dart';
import 'exercice4.dart';
import 'exercice5.dart';
import 'exercice5_2.dart';
import 'exercice5_3.dart';
import 'exercice6.dart';
import 'exercice6_2.dart';


class Exercise {
  final String title;
  final String number;
  const Exercise(this.title, this.number);
}
const List<Exercise> exercises = [
  Exercise("Simple image", "1"),
  Exercise("Transformer une image", "2"),
  Exercise("Affichage d'une tuile", "4"),
  Exercise("Plateau de tuiles", "5"),
  Exercise("Image découpée", "5_2"),
  Exercise("Plateau variable", "5_3"),
  Exercise("Animer un plateau", "6"),
  Exercise("Taquin", "7"),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
        itemCount: exercises.length,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: Text(exercises[index].number),
              title: Text(exercises[index].title),
              trailing: const Icon(Icons.arrow_forward_ios_rounded,),
              onTap:(){
                  Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Exercice6_2(title: "test")
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
