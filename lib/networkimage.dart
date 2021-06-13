import 'package:flutter/material.dart';

class Networkimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Image.network('https://image.flaticon.com/icons/png/128/3135/3135715.png',
                ),
              ],
            ) ,
          ),
        ],
      ),
    );
  }
}
