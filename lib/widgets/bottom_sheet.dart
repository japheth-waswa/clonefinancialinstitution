import 'package:flutter/material.dart';
import '../config/config.dart';
import '../screens/login_screen.dart';

class BottomSheetApp extends StatelessWidget {
  final MediaQueryData contextMediaQuery;

  const BottomSheetApp(this.contextMediaQuery);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: contextMediaQuery.size.width,
      height: 80.0,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(
                    5.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: specificBlueColor,
                  ),
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 17.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'HOME',
                  style: TextStyle(
                    fontSize: config['fontSizeMid'],
                    fontWeight: FontWeight.bold,
                    color: specificBlueColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.layers,
                  color: Colors.green[300],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'SCAN QR',
                  style: TextStyle(
                    fontSize: config['fontSizeMid'],
                    fontWeight: FontWeight.bold,
                    color: specificBlueColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.credit_card,
                  color: Colors.green[300],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'LOANS',
                  style: TextStyle(
                    fontSize: config['fontSizeMid'],
                    fontWeight: FontWeight.bold,
                    color: specificBlueColor,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (_){return LoginScreen();})),
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.account_box,
                  color: Colors.green[300],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'ACCOUNT',
                  style: TextStyle(
                    fontSize: config['fontSizeMid'],
                    fontWeight: FontWeight.bold,
                    color: specificBlueColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
