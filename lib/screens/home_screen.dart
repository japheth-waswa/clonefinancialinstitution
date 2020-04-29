import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../config/config.dart';
import '../widgets/homepage_clipper.dart';
import '../data/data.dart';
import '../widgets/home_quickactions.dart';
import '../widgets/vooma_service.dart';
import '../widgets/bottom_sheet.dart';
import '../widgets/institution_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var contextTheme = Theme.of(context);
    var contextMediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: config['backgroundColor'],
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Image(
              width: 20.0,
              height: 20.0,
              image: AssetImage('assets/images/institution-icon.png'),
            ),
            SizedBox(
              width: 20.0,
            ),
            Text(
              'THE BANK',
              style: TextStyle(
                fontSize: fontSizeH3,
                color: Colors.white,
              ),
            ),
          ],
        ),
        elevation: config['appBarElevation'],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ClipPath(
                  clipper: HomepageClipper(),
                  child: Container(
                    height: 300.0,
                    decoration: BoxDecoration(
                      color: contextTheme.primaryColor,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          config['primaryColor'],
                          Colors.green[300],
                          specificBlueColor.withOpacity(0.8),
                          specificBlueColor.withOpacity(1)
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20.0,
                  left: 30.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Good Evening,',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Text(
                        currentUser.name,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 0.0,
                  right: 30.0,
                  child: Column(
                    children: <Widget>[
                      IconButton(
                        color: Colors.white,
                        iconSize: 80.0,
                        icon: Icon(
                          Icons.account_circle,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    height: 200,
                    width: contextMediaQuery.size.width * 4 / 5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(
                            0,
                            2,
                          ),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: HomeQuickactions(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: contextMediaQuery.size.width / 10,
              ),
              child: Text(
                'PLAYER SERVICES:',
                style: TextStyle(
                  fontSize: fontSizeH2,
                  color: specificBlueColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            VoomaServices(contextMediaQuery: contextMediaQuery),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: contextMediaQuery.size.width / 10,
              ),
              child: Text(
                'PAYBILL:',
                style: TextStyle(
                  fontSize: fontSizeH2,
                  color: specificBlueColor,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: contextMediaQuery.size.width / 10,
                right: contextMediaQuery.size.width / 10,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  height: 80.0,
                  width: contextMediaQuery.size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: Icon(
                          Icons.mail_outline,
                          size: 50.0,
                          color: specificBlueColor,
                        ),
                      ),
                      Text(
                        'Make Utility Payments',
                        style: TextStyle(
                          color: specificBlueColor,
                          fontWeight: FontWeight.w600,
                          fontSize: fontSizeH3,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
                left: contextMediaQuery.size.width / 10,
                right: contextMediaQuery.size.width / 10,
              ),
              child: Container(
                padding: const EdgeInsets.all(
                  10.0,
                ),
                height: 100.0,
                width: contextMediaQuery.size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Do more...',
                      style: TextStyle(
                        color: specificBlueColor,
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, ne vim semper putant tibique, eum numquam constituam instructior cu.',
                      style: TextStyle(
                        color: specificBlueColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100.0,
            ),
          ],
        ),
      ),
      bottomSheet: BottomSheetApp(contextMediaQuery),
      drawer: InstitutionDrawer(),
    );
  }
}
