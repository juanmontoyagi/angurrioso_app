import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Background extends StatelessWidget {

  final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color(0xff2E305f),
            Color(0xff203333)
          ]
        )
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // Gradiante Azúl.
        decoration: boxDecoration,
        ),
        Positioned(
          top: -100,
          left: -30,
          child: _cajaRoja()
          )
      ],
    );
  }

}

  class _cajaRoja extends StatelessWidget {
  
    @override
    Widget build(BuildContext context) {
      return Transform.rotate(
        angle: -5,
        child: Container(
          width: 360,
          height: 360,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          )
        ),
        ),
      );
    }
  }