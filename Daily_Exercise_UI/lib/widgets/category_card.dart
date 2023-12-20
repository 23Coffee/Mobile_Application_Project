import 'package:daily_exercise/constants.dart';
import 'package:flutter/material.dart';


class CategoryCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  final void Function() press;
  const CategoryCard({
    Key? key, required this.imgSrc, required this.title, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(0,17),
              blurRadius: 17,
              spreadRadius: -5,
              color: kShadowColor,
            )
          ]
      ),
      child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Image.asset(
                        imgSrc,
                        width: 80,
                        height: 80,
                      ),
                      Spacer(),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }
    }

