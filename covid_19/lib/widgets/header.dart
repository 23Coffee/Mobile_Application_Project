import 'package:covid_19/Info.dart';
import 'package:covid_19/constant.dart';
import 'package:covid_19/widgets/count.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String img;
  final String texttop;
  final String textbottom;

  const Header({
    super.key, 
    required this.img, 
    required this.texttop, 
    required this.textbottom,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Clipper(),
      child: Container(
        padding: EdgeInsets.only(left: 10, top: 10, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            alignment: Alignment.topRight,
            image: AssetImage("assets/images/virus.png",))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Info();
                  },
                  ),
                  );
                },
              
              child: Image.asset("assets/images/main-menu.png",
              height: 50,
              width: 50,                
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  img,
                  width: 230,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
                Positioned(
                  top: 40,
                  left: 240,
                  child: Text(
                    "$texttop \n $textbottom",
                    style: kHeadingTextStyle.copyWith(
                    color: Colors.white,
                  ),
                )),
                Container(),
              ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }
}

