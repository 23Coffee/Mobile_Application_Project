import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';


class IconCard extends StatelessWidget {
  const IconCard({
    super.key, 
    required this.icon,
    
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(DefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: BackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,10),
            blurRadius: 22,
            color: PrimaryColor.withOpacity(0.22),
          ),
          BoxShadow(
            offset: Offset(-15,-15),
            blurRadius: 20,
            color: BackgroundColor,
          ),
        ],
      ),
      child: Image.asset(icon),
    );
  }
}