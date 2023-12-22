import 'package:covid_19/Info.dart';
import 'package:covid_19/constant.dart';
import 'package:covid_19/widgets/count.dart';
import 'package:covid_19/widgets/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kBodyTextColor),
          ),
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Header(
            img: "assets/images/medical-checkup.png",
            texttop: "Welcome to",
            textbottom: "Covid-19",
          ),
           Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
              color: Color(0xFFE5E5E5),
                          ),
                        ),
              child: Row(children: <Widget>[
                Image.asset("assets/icons/placeholder.png"),
                SizedBox(width: 20),
                Expanded(
                child: DropdownButton<String>(
                  isExpanded: true,
                  underline: SizedBox(),
                  icon: Image.asset("assets/icons/down-arrow.png",
                  width: 30),
                  value: "Indonesia",
                  items: ['Indonesia', 'Bangladesh', 'United States', 'Japan']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
             );
              }).toList(),
                onChanged: (value) {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: <Widget>[
            Row(
              children: <Widget>[
                RichText(
                  text:TextSpan(
                    children: [TextSpan(text: "Case Update\n",
                    style: kTitleTextstyle,
                    ),
                    TextSpan(
                      text: "Newest update March 28",
                      style: TextStyle(
                        color: kTextLightColor,
                      ),
                    ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                "See details",
                style: TextStyle(color: kPrimaryColor,
                fontWeight: FontWeight.w600,
                )
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,4),
                    blurRadius: 30,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Count(
                    color: kInfectedColor,
                    number: 124,
                    title: "Infected",
                  ),
                  Count(
                    color: kDeathColor,
                    number: 34,
                    title: "Deaths",
                  ),
                  Count(
                    color: kRecovercolor,
                    number: 23,
                    title: "Rcovered",
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Text("Spread of Virus",
              style: kTitleTextstyle,
              ),
              Text("See Details",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
              ),
            ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 178,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,10),
                    blurRadius: 30,
                    color: kShadowColor,
                  ),
                ],
              ),
              child: Image.asset("assets/images/world-map.png",
              fit: BoxFit.contain,
              ),
            )
          ],
          ),
          ),
        ],
      ),
    );
  }
}

