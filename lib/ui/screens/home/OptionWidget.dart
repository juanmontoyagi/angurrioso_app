import 'package:flutter/material.dart';

abstract class _Constants {
  static const double iconSize = 30;
  static const double itemSpacing = 20;
  static const double badgeSize = 15;
}

enum OptionType { rules, game, player, statistics }

class OptionWidget extends StatelessWidget {
  const OptionWidget({Key? key, required this.optionType})
      : super(key: key);

  final OptionType optionType;

  @override
  Widget build(BuildContext context) 
  => Expanded(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: _Constants.badgeSize / 2,
                right: _Constants.badgeSize / 2,
              ),
              child: _buildOptionContainer(
                context,
                _iconForOptionType(optionType),
                _titleForOptionType(optionType),
              ),
            ),
          ],
        ),
      );

  Widget _buildOptionContainer(
    BuildContext context,
    Icon activityIcon,
    String title,
  ) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withAlpha(90),
              blurRadius: 5.0,
              spreadRadius: 3.0,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 16),
          child: Center(
            child: _buildOptionColumn(context, activityIcon, title),
          ),
        ),
      );

  Widget _buildOptionColumn(
    BuildContext context,
    Icon optionIcon,
    String title,
  ) =>
      Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          SizedBox(
            width: _Constants.iconSize,
            height: _Constants.iconSize,
            child: optionIcon,
          ),
          SizedBox(height: 10),
          Opacity(
            opacity: 0.75,
            child: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      );


  Icon _iconForOptionType(OptionType optionType) {
    switch (optionType) {
      case OptionType.rules:
        return Icon(Icons.book_outlined);
      case OptionType.game:
        return Icon(Icons.monetization_on_outlined);
      case OptionType.player:
        return Icon(Icons.person_add_outlined);
      case OptionType.statistics:
        return Icon(Icons.analytics_outlined);
    }
  }

  String _titleForOptionType(OptionType optionType) {
    switch (optionType) {
      case OptionType.rules:
        return "Reglas";
      case OptionType.game:
        return "Crea Partida";
      case OptionType.player:
        return "Crear Jugador";
      case OptionType.statistics:
        return "Estadísticas";
    }

  }
}