import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class InitialScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Initial Page'),
      ),
      child: Center(
        child: CupertinoButton(
                  padding: const EdgeInsets.all(15),
                  color: Colors.black12,
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          },
          child: const Text('¡Vamos a Jugar!'),
        ),
      ),
    );
  }
}