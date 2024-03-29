import 'package:angurrioso_app/ui/widgets/card_table.dart';
import 'package:angurrioso_app/ui/widgets/page_titles.dart';
import 'package:flutter/material.dart';

import '../../widgets/background.dart';
import '../../widgets/bottom_navigation.dart';

class HomeScreenNew extends StatelessWidget {
  const HomeScreenNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Titulos:
          PageTitle(),
          SizedBox(height: 50),
          //CardTable:
          CardTable(),
        ],
      ),
    );
  }
}