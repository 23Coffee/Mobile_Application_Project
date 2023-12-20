import 'package:daily_exercise/constants.dart';
import 'package:flutter/material.dart';


class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavBar(
            title: "Today",
            imgSrc: "assets/icons/schedule.png",
            press: (){},
          ),
          BottomNavBar(
            title: "All Excercise",
            imgSrc: "assets/icons/weights.png",
            press: (){},
            isActive: true,
          ),
          BottomNavBar(
            title: "Settings",
            imgSrc: "assets/icons/cogwheel.png",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  final String imgSrc;
  final String title;
  final void Function() press;
  final bool isActive;
  const BottomNavBar({
    Key? key, 
    required this.imgSrc, 
    required this.title, 
    required this.press, 
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image.asset(imgSrc,
          width: 30,
          height: 30,
          color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline1?.copyWith(
              fontSize: 10,
              color: isActive ? kActiveIconColor : kTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
