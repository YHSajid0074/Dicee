import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   int a=5;
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.greenAccent,
//           title: Center(child: Text('Dicee')),
//         ),
//         body: Row(
//
//           children: [
//             Expanded(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: TextButton(
//                   onPressed: () {
// // Add your onPressed code here!
//                   },
//                   child: Image(
//                     image: AssetImage('images/dice$a.png'),
//                   ),
//                 ),
//               ),
//             ),
//             Expanded(
//               child: Align(
//                 alignment: Alignment.center,
//                 child: TextButton(
//                   onPressed: () {
// // Add your onPressed code here!
//                     print('Right button got pressed');
//                   },
//                   child: Image(
//                     image: AssetImage('images/dice1.png'),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
int a=1;
  int b=1;
  void Dice(){
    setState(() {
      a=Random().nextInt(6)+1;
      b=Random().nextInt(6)+1;
    });
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          title: Center(child: Text('Dicee')),
        ),
        body: Row(

          children: [
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Dice();
                  },
                  child: Image(
                    image: AssetImage('images/dice$a.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    Dice();
                  },
                  child: Image(
                    image: AssetImage('images/dice$b.png'),
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

