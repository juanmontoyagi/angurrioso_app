import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(iconData: Icons.book_rounded, color: Colors.blue, titulo: 'Reglas'),
            _SingleCard(iconData: Icons.gamepad, color: Colors.blue, titulo: 'Crear Partida'),
          ]
        ),
        TableRow(
          children: [
            _SingleCard(iconData: Icons.person, color: Colors.blue, titulo: 'Crear Jugador'),
            _SingleCard(iconData: Icons.pie_chart, color: Colors.blue, titulo: 'Estadísticas'),
          ]
        )
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String titulo;

  const _SingleCard(
      {super.key,
      required this.iconData,
      required this.color,
      required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              print("click: "+this.titulo);
            },
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(iconData, size: 35),
              radius: 30,
            ),
          ),
          SizedBox(height: 10),
          Text(this.titulo, style: TextStyle(color: this.color, fontSize: 18))
        ],
      ),
    );
  }
}
