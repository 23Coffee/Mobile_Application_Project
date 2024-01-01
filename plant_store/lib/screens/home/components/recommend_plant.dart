import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';
import 'package:plant_store/screens/details/details_screen.dart';

class RecommendPlant extends StatelessWidget {
  const RecommendPlant({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/Plant1.PNG",
            title: "Monstera",
            country: "Mexico",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendPlantCard(
            image: "assets/images/Plant1.PNG",
            title: "Monstera",
            country: "Mexico",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
          RecommendPlantCard(
            image: "assets/images/Plant1.PNG",
            title: "Monstera",
            country: "Mexico",
            price: 440,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    super.key, 
    required this.image, 
    required this.title, 
    required this.country, 
    required this.price, 
    required this.press,
  }); 

  final String image, title, country;
  final int price;
  final void Function()  press;
 

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: DefaultPadding,
        top: DefaultPadding / 2,
        bottom: DefaultPadding * 2.5,
        ),
      width: size.width * 0.4, // 40% width
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(DefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 50,
                    color: PrimaryColor.withOpacity(0.23)
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n ".toUpperCase(),
                          style: Theme.of(context).textTheme.button
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(color: PrimaryColor.withOpacity(0.7))
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                    .textTheme
                    .button
                    ?.copyWith(color: PrimaryColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}