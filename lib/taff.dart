import 'package:flutter/material.dart';

class Taff extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: 30,
            ),

            //La photo de profil pour l'obliger à être rond vous utiliserez soit
            //le Widget CircleAvatar dont on a déjà parlé ou ClipRRect
            //(c'est bien 2 R) qui coupe d'autres widgets pour leur donner une certaine
            //forme
            //Faites des recherches

            Column(
      children: [
        Container(
          height: 100,
          width: 100,
          child: CircleAvatar(
          backgroundImage: AssetImage("images/profile.jpg"),
        ),
        ),
        Text(
          'Serge Gnacadja',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        Text(
          "sergegnac2003@gmail.com",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ],
    ),
            
            SizedBox(
              height: 15.0,
            ),
            //Pourquoi vos icones sont elles aussi grosses ?
            //VOus auriez pu créer un widget à part rien que pour afficher la photo de profil
            //Il aurait donc un diamètre un peu plus grand que celui du widget que vous utilisez
            //pour afficher les icones
            //Mais si vous tenez à utiliser un même widget pour les afficher tous,
            //il faudra passer à chaque fois le rayon du cercle comme attribut puisque'il
            //varie en fonction de ce qu'on veut afficher.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Na(
                  path: 'images/file.png',
                  finaltext: 'Passenger \ndocuments',
                 
                ),
                Na(
                  path: 'images/bell-simple.png',
                  finaltext: 'Flight price \ntrackings',
                 
                ),
                Na(
                  path: 'images/question.png',
                  finaltext: 'Help \nCenter',
                  
                ),
              ],
            )
          ],
        ),
      ),
      flex: 2,
    );
  }
}

class Na extends StatelessWidget {
  final String path, finaltext;

  const Na({
    Key key,
    this.path,
    
    this.finaltext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          child: CircleAvatar(
          backgroundColor: Colors.white,  
          backgroundImage: AssetImage(path),
        ),
        ),
        Text(
          finaltext,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
