import 'package:flutter/material.dart';
import '../config/config.dart';

class VoomaServices extends StatelessWidget {
  final MediaQueryData contextMediaQuery;

  const VoomaServices({this.contextMediaQuery});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: contextMediaQuery.size.width / 10,
        right: contextMediaQuery.size.width / 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 80.0,
              width: ((contextMediaQuery.size.width -
                          ((contextMediaQuery.size.width / 10) * 2)) /
                      2) -
                  10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    width: 50.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: darkPink,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.phone_iphone,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'SEND TO',
                        style: TextStyle(
                          color: specificBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: config['fontSize'],
                        ),
                      ),
                      Text(
                        'PLAYER',
                        style: TextStyle(
                          color: specificBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: config['fontSize'],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 80.0,
              width: ((contextMediaQuery.size.width -
                          ((contextMediaQuery.size.width / 10) * 2)) /
                      2) -
                  10,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 50.0,
                    height: 50.0,
                    margin: const EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: darkPink,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.phone_iphone,
                      ),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'PAY TO',
                        style: TextStyle(
                          color: specificBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: config['fontSize'],
                        ),
                      ),
                      Text(
                        'PLAYER',
                        style: TextStyle(
                          color: specificBlueColor,
                          fontWeight: FontWeight.bold,
                          fontSize: config['fontSize'],
                        ),
                      ),
                    ],
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
