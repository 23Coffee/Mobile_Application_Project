
import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';
import 'package:plant_store/screens/home/components/feature_plant.dart';
import 'package:plant_store/screens/home/components/header_with_searchbox.dart';
import 'package:plant_store/screens/home/components/recommend_plant.dart';
import 'package:plant_store/screens/home/components/title_with_btn.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //Total height and width of screen
    Size size = MediaQuery.of(context).size;
    //Scrolling
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBar(size: size),
          TitleWithMoreBtn(
            title: "Recommended Plants",
            press: () {},
          ),
          RecommendPlant(),
          TitleWithMoreBtn( 
            title: "Featured Plants",
            press: () {},
          ),
          FeaturePlant(),
          SizedBox(height: DefaultPadding,),
        ],
      ),
    );
  }
}




