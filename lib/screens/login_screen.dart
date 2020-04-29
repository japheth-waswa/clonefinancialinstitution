import 'package:flutter/material.dart';
import '../widgets/radial_painter.dart';
import '../config/config.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(
                10.0,
                50.0,
                10.0,
                30.0,
              ),
              height: 250.0,
              padding: const EdgeInsets.all(
                30.0,
              ),
              child: CustomPaint(
                foregroundPainter: RadialPainter(Colors.grey[200], 10.0),
                child: Center(
                  child: Icon(
                    Icons.lock_outline,
                    size: 80.0,
                  ),
                ),
              ),
            ),
            Text(
              'Enter Service PIN',
              style: TextStyle(
                color: specificBlueColor,
                fontWeight: FontWeight.w600,
                fontSize: fontSizeH2,
                letterSpacing: 1.5,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '4',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '5',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '6',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '7',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '8',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '9',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: specificBlueColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Icon(
                        Icons.backspace,
                        size: 19.0,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Colors.black38,
                          ),
                        ),
                      ),
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(
                        30.0,
                      ),
                      child: Text(
                        'OK',
                        style: TextStyle(
                          fontSize: fontSizeH3,
                          color: Colors.green[600],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
