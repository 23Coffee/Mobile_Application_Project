import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5)
        ),
      
      child: TextField(
        decoration: InputDecoration(
          hintText: "Type to Search",
          icon: Image.asset(
            "assets/icons/search.png",
            width: 20,
            height: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
