import 'package:flutter/material.dart';
import 'package:plant_store/constants.dart';



class HeaderWithSearchBar extends StatelessWidget {
  const HeaderWithSearchBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: DefaultPadding * 2.5),
      //Cover 20% of total height of screen
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: DefaultPadding,
              left: DefaultPadding,
              right: DefaultPadding,
              bottom: 36 + DefaultPadding,
            ),
            height: size.height * 0.2 -27,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Welcome to Plant Store',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Image.asset("assets/icons/plant.png"),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: DefaultPadding),
            padding: EdgeInsets.symmetric(horizontal: DefaultPadding),
            height: 54,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0,10),
                  blurRadius: 50,
                  color: PrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                        ),
                        enabledBorder: InputBorder.none,
                       focusedBorder: InputBorder.none,
                      ),
                    ),
                ),
                Image.asset("assets/icons/search-interface-symbol.png",
                width: 30,
                height: 30,
                color: Colors.black.withOpacity(0.3),
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

