import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';
import 'package:plant_store/screens/details/components/icon_card.dart';
import 'package:plant_store/screens/details/components/image_icon.dart';
import 'package:plant_store/screens/details/components/title_and_price.dart';

class Body2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImgAndIcon(size: size),
          TitleAndPrice(
            title: "Monstera",
            country: "Russia",
            price: 440,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: PrimaryColor, // background color
                    onPrimary: Colors.white, // text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // background color
                    onPrimary: Colors.white, // text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Description",
                    style: TextStyle(
                      color: PrimaryColor,
                      fontSize: 16,
                      ),
                  ),
                ),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}


