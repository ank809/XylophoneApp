import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  void sound(int soundNumber){
    final player= AudioPlayer();
            player.play(AssetSource('note$soundNumber.wav')); 
  }
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
        appBar: AppBar(title: Text('Xylophone', 
        style: TextStyle(fontWeight: 
        FontWeight.bold),
        ),
         backgroundColor: Color.fromARGB(255, 77, 8, 41),),

        body: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Expanded(
            child: ElevatedButton(
              onPressed: (){
              sound(1);
            },
             child: Text('Click Me 1'),
             style: ButtonStyle(backgroundColor: 
             MaterialStatePropertyAll(
              Colors.amber
             ),
             ),
            ),
          ),
          Expanded(
            child: ElevatedButton(onPressed: (){
              sound(2);
            }, child: Text('Click Me 2'),
            style: ButtonStyle(backgroundColor: 
             MaterialStatePropertyAll(
              Colors.orange
             ),
             ),
            ),
          ),
          Expanded(
            child: ElevatedButton(onPressed: (){
              sound(3);
            }, child: Text('Click Me 3'),
            style: ButtonStyle(backgroundColor: 
             MaterialStatePropertyAll(
              Colors.blue
             ),
             ),
            ),
          ),
          Expanded(
            child: ElevatedButton(onPressed: (){
              sound(4); 
            }, child: Text('Click Me 4'),
            style: ButtonStyle(backgroundColor: 
             MaterialStatePropertyAll(
              Colors.purple
             ),
             ),
            ),
          ),
        Expanded(
          child: ElevatedButton(onPressed: (){
             sound(5);
            }, child: Text('Click Me 5'),
            style: ButtonStyle(backgroundColor: 
             MaterialStatePropertyAll(
              Colors.pink
             ),
             ),
            ),
        ),
          Expanded(
            child: ElevatedButton(onPressed: (){
            sound(6);
            }, child: Text('Click Me 6'),
            style: ButtonStyle(backgroundColor: 
             MaterialStatePropertyAll(
              Colors.brown
             ),
             ),
            ),
          ),
          Expanded(
            child: ElevatedButton(onPressed: (){
              sound(7);
            }, child: Text('Click Me 7'),
            style: ButtonStyle(backgroundColor: 
             MaterialStatePropertyAll(
              Colors.greenAccent
             ),
             ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}
