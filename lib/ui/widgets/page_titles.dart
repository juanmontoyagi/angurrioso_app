import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('¡El Angurrioso!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 10),
          Text('Vamos a jugar el juego de Angurrioso, así que deberás escoger alguna de las opciones para poder empezar a jugar.', style: TextStyle(fontSize: 16, color: Colors.white))
        ],
        ),
      )
      
    );
  }
}