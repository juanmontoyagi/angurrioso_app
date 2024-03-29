import 'package:angurrioso_app/ui/screens/home/OptionWidget.dart';
import 'package:flutter/material.dart';

abstract class _Constants {
  static const double iconSize = 30;
  static const double itemSpacing = 10;
  static const double badgeSize = 15;
}

class OptionsWidget extends StatelessWidget {
  const OptionsWidget({
    required Key? key,
    required this.options,
  }) : super(key: key);

  final Set<OptionType> options;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _buildActivities(),
      );

  Widget _buildSpacing() => SizedBox(
        width: _Constants.itemSpacing - _Constants.badgeSize / 2,
      );

  List<Widget> _buildActivities() {
    List<Widget> widgets = [SizedBox(width: _Constants.itemSpacing)];

    options.forEach((optionType) {
      widgets
        ..add(
          OptionWidget(
            optionType: optionType,
          ),
        )
        ..add(_buildSpacing());
    });

    return widgets;
  }
}