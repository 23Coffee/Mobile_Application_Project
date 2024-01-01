import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';
import 'package:plant_store/screens/details/components/body.dart';
import 'package:plant_store/screens/details/components/icon_card.dart';
import 'package:plant_store/screens/home/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Body2(),
    );
      
  }
}

