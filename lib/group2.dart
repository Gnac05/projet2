import 'package:flutter/material.dart';

class Group2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Settings',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
              ),
            ),
            //C'est bien de remarquer le schéma récurrent et de créer un widget pour ça
            //Mais j'ai l'impression que vous avez seulement copier et modifier le widget
            //qu'on avait créé en classe
            Ma(
              path: 'images/phone.png',
              initialtext: 'Phone number',
              finaltext: 'Add number',
              int: 84,
            ),
            Ma(
              path: 'images/globe.png',
              initialtext: 'Language',
              finaltext: 'English (eng)',
              int: 120,
            ),
            Ma(
              path: 'images/money.png',
              initialtext: 'Currency',
              finaltext: 'US Dollar (\$)',
              int: 131,
            ),
            Ma(
              path: 'images/map-pin.png',
              initialtext: 'Distance units',
              finaltext: 'Mile',
              int:139 ,
            ),
            Ma(
              path: 'images/house-simple.png',
              initialtext: 'Country/region',
              finaltext: 'Canada',
              int: 110,
            ),
            Ma(
              path: 'images/bell-simple.png',
              initialtext: 'Notifications',
              finaltext: '>',
              int: 171,
            ),
          ],
        ),
      ),
      flex: 3,
    );
  }
}

class Ma extends StatelessWidget {
  final String path, initialtext, finaltext;
  final double int;
  const Ma({
    Key key,
    this.path,
    this.initialtext,
    this.finaltext,
    this.int
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 15,
        ),
        Image.asset(
          path,
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          initialtext,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: int,
        ),
        Text(
          finaltext,
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
