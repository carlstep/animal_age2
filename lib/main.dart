import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(AnimalAgeApp());

Widget animalCard({Color color, String animalName}) {
  return Expanded(
    child: Card(
      color: color,
      child: Column(
        children: [
          ListTile(
            //tileColor: color,
            leading: Column(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/image_placeholder.png',
                  ),
                  radius: 25.0,
                ),
              ],
            ),
            title: Text(
              '$animalName',
              style: GoogleFonts.cabin(
                color: Colors.grey[700],
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'subtext for card',
            ),
            trailing: Icon(
              Icons.info,
              size: 40.0,
            ),
            onTap: () {
              print('the $animalName card has been tapped');
            },
          ),
        ],
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
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
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
