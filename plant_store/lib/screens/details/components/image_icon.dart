import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';
import 'package:plant_store/screens/details/components/icon_card.dart';

class ImgAndIcon extends StatelessWidget {
  const ImgAndIcon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: DefaultPadding+5),
      
      child: SizedBox(
        height: size.height * 0.8,
        child: Row( 
          children: <Widget>[
            Expanded(
              child: Column(
                
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(
                        horizontal: DefaultPadding, 
                        vertical: DefaultPadding
                        ),
                      onPressed: () {
                        Navigator.pop(context);
                      }, 
                      icon: Image.asset("assets/icons/previous.png"),
                      ),
                    ),
                    Spacer(),
                    IconCard(
                      icon: "assets/icons/sun.png",
                    ),
                    IconCard(
                      icon: "assets/icons/drop.png",
                    ),
                    IconCard(
                      icon: "assets/icons/fertilizer.png",
                    ),
                    IconCard(
                      icon: "assets/icons/wind.png",
                    ),
                  ],
                ),
              ),
              Container(
                
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 60,
                      color: PrimaryColor.withOpacity(0.39),
                    ),
                  ],
                  
                  image: DecorationImage (
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/Plant1.PNG"),
                    ),
                  ),
              )
          ],
        ),
      ),
    );
  }
}

