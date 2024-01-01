import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,-10),
            blurRadius: 35,
            color: PrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          IconButton(
            icon: Image.asset('assets/icons/tea-leaf.png'),
            onPressed: () {},
            ),
            IconButton(
            icon: Image.asset('assets/icons/heart.png'),
            onPressed: () {},
            ),
            IconButton(
            icon: Image.asset('assets/icons/user.png'),
            onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
