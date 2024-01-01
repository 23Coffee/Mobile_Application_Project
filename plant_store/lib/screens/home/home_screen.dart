import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:plant_store/constants.dart';
import 'package:plant_store/screens/home/components/body.dart';
import 'package:plant_store/screens/home/components/bottom_navbar.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: PrimaryColor,
      leading: IconButton(
        icon: Image.asset("assets/icons/menu.png"),
        onPressed: () {},
      ),
     
    );
  }
}

