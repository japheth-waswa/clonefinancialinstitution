import 'package:flutter/material.dart';
import '../widgets/radial_painter.dart';
import '../config/config.dart';
import '../screens/home_screen.dart';
import '../config/helpers.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  _processServicePin(value, actionType) {
    setState(() {
      if (actionType == 'add') {
        _textEditingController.text = _textEditingController.text + value;
      }else if (actionType == 'remove') {
        _textEditingController.text = Helpers.removeLastCharacterFromString(_textEditingController.text);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              height: 25.0,
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 100.0,
                right: 100.0,
              ),
              child: TextField(
                controller: _textEditingController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                textAlign: TextAlign.center,
                autocorrect: false,
                obscureText: true,
                enabled: false,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Row(
              children: <Widget>[
                KeyboardBuilder(
                  _processServicePin,
                  '1',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                    right: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
                KeyboardBuilder(
                  _processServicePin,
                  '2',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                    right: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
                KeyboardBuilder(
                  _processServicePin,
                  '3',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                KeyboardBuilder(
                  _processServicePin,
                  '4',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                    right: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
                KeyboardBuilder(
                  _processServicePin,
                  '5',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                    right: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
                KeyboardBuilder(
                  _processServicePin,
                  '6',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                KeyboardBuilder(
                  _processServicePin,
                  '7',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                    right: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
                KeyboardBuilder(
                  _processServicePin,
                  '8',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                    right: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
                KeyboardBuilder(
                  _processServicePin,
                  '9',
                  Border(
                    bottom: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: ()=>_processServicePin(null, 'remove'),
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
                KeyboardBuilder(
                  _processServicePin,
                  '0',
                  Border(
                    right: BorderSide(
                      color: Colors.black38,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) {
                      return HomeScreen();
                    })),
                    child: Container(
                      color: Colors.white,
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

class KeyboardBuilder extends StatelessWidget {
  final Function onTap;
  final String keyValue;
  final Border keyBorder;

  KeyboardBuilder(this.onTap, this.keyValue, this.keyBorder);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(keyValue, 'add'),
        child: Container(
          padding: const EdgeInsets.all(
            30.0,
          ),
          decoration: BoxDecoration(
            border: keyBorder,
          ),
          child: Center(
            child: Text(
              keyValue,
              style: TextStyle(
                fontSize: fontSizeH3,
                color: specificBlueColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
