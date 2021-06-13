import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Submit'),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder:
                  (context) => SecondRoute()),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: ListView(
        children:<Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text('THANKS   and   REGARDS',
                  style: TextStyle(height: 10,fontSize: 20,fontWeight: FontWeight.bold),
                ),
                Text('yellenkiraghusharan@gmail.com',
                  style: TextStyle(height: 2,fontSize: 20,fontWeight: FontWeight.bold),
                ),
                Text('+91 6305438811',
                  style: TextStyle(height: 2,fontSize: 20,fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Icon(Icons.verified_user,size: 40),
                    SizedBox(
                      width:25,
                    ),
                    Icon(Icons.android,size: 40),
                    SizedBox(
                      width:25,
                    ),
                    Icon(Icons.bug_report,size: 40),
                    SizedBox(
                      width:25,
                    ),
                    Icon(Icons.business,size: 40),
                    SizedBox(
                      width:25,
                    ),
                    Icon(Icons.card_giftcard,size: 40),
                    SizedBox(
                      width:25,
                    ),
                    Icon(Icons.category,size: 40),
                    SizedBox(
                      width:25,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}