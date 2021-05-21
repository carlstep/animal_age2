import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AnimalAgeApp());

Expanded animalCard({Color color, String animalName}) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 5.0),
      height: 80.0,
      child: TextButton.icon(
        label: Text(
          '$animalName',
          style: GoogleFonts.cabin(
            color: Colors.grey[800],
            fontSize: 18.0,
          ),
        ),
        icon: Image(
          image: AssetImage('assets/images/image_placeholder.png'),
          height: 30.0,
        ),
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {},
      ),
    ),
  );
}

class AnimalAgeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "My Pet's Age",
            style: GoogleFonts.cabin(
              color: Colors.grey[200],
              fontSize: 24.0,
            ),
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              animalCard(color: Colors.red[200], animalName: 'Dog'),
              animalCard(color: Colors.green[200], animalName: 'Cat'),
              animalCard(color: Colors.blue[200], animalName: 'Snake'),
              animalCard(color: Colors.yellow[200], animalName: 'Horse'),
              animalCard(color: Colors.purple[200], animalName: 'Elephant'),
              animalCard(color: Colors.teal[200], animalName: 'Rat'),
              animalCard(color: Colors.orange[200], animalName: 'Pig'),
              animalCard(color: Colors.lime[200], animalName: 'Rabbit'),
              animalCard(color: Colors.green[400], animalName: 'Hamster'),
            ],
          ),
        ),
      ),
    );
  }
}
