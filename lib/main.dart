import 'package:angurrioso_app/ui/screens/home/home_screen.dart';
import 'package:angurrioso_app/ui/screens/home/home_screen_new.dart';
import 'package:flutter/material.dart';

import 'package:angurrioso_app/ui/screens/initial_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Angurrioso App',
      initialRoute: 'homeNew ',
      routes: {
        'initial': ( _ ) => InitialScreen(),
        'home': ( _ ) => HomeScreen(),
        'homeNew': ( _ ) => HomeScreenNew(),
      },
    );
  }
}