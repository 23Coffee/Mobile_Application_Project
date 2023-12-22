import 'package:covid_19/constant.dart';
import 'package:covid_19/widgets/header.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Header(
          img: "assets/images/covid-19.png",
          texttop: "Get to know",
          textbottom: "About Covid-19",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Symptoms",
              style: kTitleTextstyle,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Symtoms(
                    img: "assets/icons/headache.png",
                    title: "Headache",
                    isActive: true,
                  ),
                  Symtoms(
                    img: "assets/icons/cough.png",
                    title: "Cough",
                  ),
                  Symtoms(
                    img: "assets/icons/sick.png",
                    title: "Fever",
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("Prevention", style: kTitleTextstyle),
              SizedBox(height: 20),
              Prevention(
                img: "assets/images/face-mask.png",
                title: "Wear Face Mask",
                text: "Wearing face masks is recommended as part of personal protective equipment and as a public health measure to prevent the spread of coronavirus disease 2019 (COVID-19) pandemic.",
              ),
              Prevention(
                img: "assets/images/washing-hands.png",
                title: "Wash Your Hands",
                text: "To stop the spread of COVID-19, along with other COVID appropriate behaviours, the practice of handwashing at regular intervals is a must.",
              ),
            ],
            ),
          )
          ],
        ),
      ),
    );
  }
}

class Prevention extends StatelessWidget {
  final String img;
  final String title;
  final String text;
  const Prevention({
    super.key, 
    required this.img, 
    required this.title, 
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
        children: <Widget>[
          Container(
            height: 136,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,8),
                  blurRadius: 24,
                  color: kShadowColor,
                ),
              ],
            ),
          ),
          Image.asset(
            img,
            height: 100,
            width: 100,
          ),
          Positioned(
            left: 130,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15
            ),
            height: 136,
            width: MediaQuery.of(context).size.width -170,
            child: 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              Text(
                title, 
              style: kTitleTextstyle.copyWith(
              fontSize: 16,
            ),
            ),
            Text(text,
            style: TextStyle(
              fontSize: 12
              ),
              ),
              // Can add more detail button here
          ]),
          ))
        ],
        ), 
      ),
    );
  }
}

class Symtoms extends StatelessWidget {
  final String img;
  final String title;
  final bool isActive;
  const Symtoms({
    super.key, 
    required this.img, 
    required this.title, 
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive ?
          BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 20,
          color: kActiveShadowColor,
          )
          : BoxShadow(
            offset: Offset(0,3),
            blurRadius: 6,
            color: kShadowColor,
            ),
        ],
      ),
      child: Column(children: <Widget>[
        Image.asset(
          img,
          height: 90,
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ]),
    );
  }
}