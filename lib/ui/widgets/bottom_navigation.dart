import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Calendario'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_outlined),
            label: 'Inicio'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil'
          )
      ],
    );
  }
}