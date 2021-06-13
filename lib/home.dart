import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget> [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  hintText:'type your text here.......',
                  hintStyle: TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: Colors.white70,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    borderSide: BorderSide(color: Colors.red,width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.redAccent),
                  ),
                ),
              ),
            ),
          ],
        ),
        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage(
                'assets/images/fitnesslocal.jpg'),
          ),
        ),
      ),
    );
  }
}
