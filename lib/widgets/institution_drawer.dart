import 'package:flutter/material.dart';
import '../config/config.dart';
import '../data/data.dart';

class InstitutionDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints boxConstraints) {
        double drawerWidth = boxConstraints.maxWidth;

        return Drawer(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 20.0,
            ),
            color: specificDeepBlueColor,
            child: ListView(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.account_circle,
                    size: 100.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  currentUser.name,
                  style: TextStyle(
                    fontSize: fontSizeH3,
                    letterSpacing: 2.0,
                    color: Colors.green[300],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  currentUser.phone,
                  style: TextStyle(
                    fontSize: fontSizeH3,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'BUY FLOAT',
                    style: TextStyle(
                      fontSize: fontSizeH3,
                      letterSpacing: 2.0,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 145.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'PAY WITH VISA',
                    style: TextStyle(
                      fontSize: fontSizeH3,
                      letterSpacing: 2.0,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 145.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'SOME POINTS',
                    style: TextStyle(
                      fontSize: fontSizeH3,
                      letterSpacing: 2.0,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 145.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'APPLY NOW',
                    style: TextStyle(
                      fontSize: fontSizeH3,
                      letterSpacing: 2.0,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 145.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'DEALS & OFFERS',
                    style: TextStyle(
                      fontSize: fontSizeH3,
                      letterSpacing: 2.0,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 145.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'FIND US',
                    style: TextStyle(
                      fontSize: fontSizeH3,
                      letterSpacing: 2.0,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 145.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'TOOLS & ABOUT',
                    style: TextStyle(
                      fontSize: fontSizeH3,
                      letterSpacing: 2.0,
                      color: Colors.green[300],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    right: 145.0,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
