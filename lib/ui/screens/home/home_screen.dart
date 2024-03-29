import 'package:angurrioso_app/ui/screens/home/OptionsWidget.dart';
import 'package:angurrioso_app/ui/screens/home/OptionWidget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("El Juego de Angurrioso"),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            _buildTitle(),
            _buildOptionsWidget(),
          ],
        ),
      ),
    );
  }
  }

  Widget _buildTitle() => 
  Text("Angurrioso",textAlign: TextAlign.center,);

  Widget _buildOptionsWidget() => Padding(
    padding: EdgeInsets.only(bottom: 6),
      child: OptionsWidget(
        options: {
          OptionType.rules,
          OptionType.game,
          OptionType.player,
          OptionType.statistics,
        }, key: null,
      ),
    );
