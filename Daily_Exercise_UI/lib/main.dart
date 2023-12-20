import 'package:daily_exercise/Screens/details_screen.dart';
import 'package:daily_exercise/constants.dart';
import 'package:daily_exercise/widgets/Bottom_Nav.dart';
import 'package:daily_exercise/widgets/SearchBar.dart';
import 'package:daily_exercise/widgets/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Exercise',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        var size = MediaQuery.of(context).size; // total height
        return Scaffold(
          bottomNavigationBar: BottomNav(),
        
      
      body: Stack(
        children: <Widget>[
          Container(
          // Container height is 45% of total height
          height: size.height * 0.45,
          width: size.width,
          decoration: BoxDecoration(
            color: Color(0xFFF5CE88),
          ),
          child: Opacity(
            opacity: 0.5, // Set the desired opacity level (0.5 for 50%)
            
            child: Image.asset(
              "assets/images/steps-counter.png",
              alignment: Alignment.centerLeft,
              fit: BoxFit.contain,
              
            ),
          ),
        ),
          SafeArea(child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 52,
                  width: 52,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2BEA1),
                    shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "assets/icons/option.png",
                        width: 32, // Set your desired width
                        height: 32, // Set your desired height
                      ),
                    ),
                  ),
                  Text(
                  "Welcome to Daily Exercise",
                  style: Theme.of(context)
                  .textTheme
                  .displayMedium
                  ?.copyWith(
                    fontWeight: FontWeight.w900,
                    fontSize: 40),
                  ),
                  Searchbar(),
                  
                    Expanded(
                      child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: <Widget>[
                          CategoryCard(
                            title: "Diet Recommendation",
                            imgSrc: "assets/images/diet.png",
                            press: (){},
                          ),
                          CategoryCard(
                            title: "Kegel Excercise",
                            imgSrc: "assets/images/exercises.png",
                            press: (){},
                          ),
                          CategoryCard(
                            title: "Meditation",
                            imgSrc: "assets/images/conversation.png",
                            press: (){
                              Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context){
                                return DetailsScreen();
                                }),
                              );
                          },
                        ),
                          CategoryCard(
                            title: "Yoga",
                            imgSrc: "assets/images/yoga.png",
                            press: (){},
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



