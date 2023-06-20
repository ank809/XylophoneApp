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
  Expanded buildkey ( Color color, int soundno, ){
       return Expanded(
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(color)),
              onPressed: (){
              sound(soundno);
            },
             child: Text('Click Me $soundno', style: TextStyle(fontWeight: FontWeight.bold, decorationColor: Colors.blueAccent),),
            
             ),
             );
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
         buildkey(Colors.red, 1),
         buildkey(Colors.amber, 2),
         buildkey(Colors.pink, 3),
         buildkey(Colors.purple, 4),
         buildkey(const Color.fromARGB(255, 129, 84, 17), 5),
         buildkey(Color.fromARGB(255, 6, 41, 54), 6),
         buildkey(Colors.green, 7),
          
          ],
        ),
      ),
    );
  }
}
