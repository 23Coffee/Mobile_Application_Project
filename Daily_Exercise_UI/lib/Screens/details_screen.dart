import 'package:daily_exercise/constants.dart';
import 'package:daily_exercise/widgets/Bottom_Nav.dart';
import 'package:daily_exercise/widgets/SearchBar.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Stack(
        children: <Widget>[
           Container(
          // Container height is 45% of total height
          height: size.height * 0.45,
          width: size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 112, 234, 255),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Opacity(
              opacity: 0.8, // Set the desired opacity level (0.5 for 50%)
              
              child: Image.asset(
                "assets/images/discussion.png",
                alignment: Alignment.centerRight,
                fit: BoxFit.contain,
                
              ),
            ),
          ),
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text("Welcome to Meditation",
                style: Theme.of(context)
                .textTheme
                .displayMedium
                ?.copyWith(
                  fontWeight: FontWeight.w900,
                  fontSize: 35,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "3-10 MIN Course",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width:size.width * .6,
                  child: Text(
                    " Live happier and healthier by learning the fundamentals of meditation and mindfulness"
                    ),
                ),
                SizedBox(
                  width: size.width * .6,
                  child: Searchbar(),
                ),
                Wrap(
                  spacing: 20, //horizon space
                  runSpacing: 20, //vertical space
                  children: <Widget>[
                  Sessions(
                    SessionID: 1,
                    isDone: true,
                    press: () {},
                  ),
                  Sessions(
                    SessionID: 2,
                    isDone: false,
                    press: () {},
                  ),
                  Sessions(
                    SessionID: 3,
                    isDone: false,
                    press: () {},
                  ),
                  Sessions(
                    SessionID: 4,
                    isDone: false,
                    press: () {},
                  ),
                
                ]),
                Text("Mediation", 
                style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(13),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 17),
                        blurRadius: 23,
                        spreadRadius: -13,
                        color: kShadowColor,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: <Widget>[
                      Image.asset("assets/icons/discussion (1).png"
                      ),
                      SizedBox(width: 20),
                      Expanded(child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Text(
                          "Basic 2",
                          style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Text("Start your deepen you practice"),
                      ],
                      ),
                      ),
                      Padding(padding: EdgeInsets.all(10),
                      child: Image.asset("assets/icons/lock.png"),
                      ),
                    ],),
                  ),
                ),
                ],
              ),
              ),
          ),
          ),
        ],
      ),
    );
  }
}

class Sessions extends StatelessWidget {
  final int SessionID;
  final bool isDone;
  final void Function() press;
  const Sessions({
    Key? key, 
    required this.isDone, 
    required this.SessionID, 
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint){
        return ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            width: constraint.maxWidth/2 -10,
            //padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: kShadowColor,
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration( 
                      color: isDone ? kBlueColor: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kBlueColor),
                      
                      ),
                      child: Icon(
                        Icons.play_arrow, 
                        color: isDone ? Colors.white : kBlueColor,
                        ),
                    ),
                    SizedBox(width:10),
                    Text(
                      "Session $SessionID",
                      style: Theme.of(context).textTheme.subtitle1,
                      )
                  ]),
                ),
              ),
            )
          ),
        );
      }
    );
  }
}