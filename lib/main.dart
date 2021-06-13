import 'package:flutter/material.dart';
import 'package:task_2/home.dart';
import 'package:task_2/networkimage.dart';
import 'package:task_2/button.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{

  int index=0;
  List<Widget> list = [
    Home(),
    Networkimage(),
    Button(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TASK2APP"),
          leading: GestureDetector(
            onTap: (){},
            child: Icon(Icons.menu),
          ),
          actions: <Widget>[
            Padding(padding: EdgeInsets.only(right: 15.0),
              child: GestureDetector(
                onTap: (){},
                child: Icon(Icons.search),
              ),
            ),
            Padding(padding: EdgeInsets.only(right:15.0),
              child: GestureDetector(
                onTap: (){},
                child: Icon(Icons.more_vert),
              ),
            )
          ],
        ),
        body: list[index],
        drawer: MyDrawer(onTap: (ctx,i){
          setState(() {
            index=i;
            Navigator.pop(ctx);
          });
        },),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {

  final Function onTap;

  MyDrawer ({
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.8,
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              child: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/icon.png'),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'GIVENTASKS',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: ()=>onTap(context,0),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('NetworkImage'),
              onTap: ()=>onTap(context,1),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Button'),
              onTap: ()=>onTap(context,2),
            ),
            Divider(height: 1,),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),
              onTap: ()=>onTap(context,0),
            )
          ],
        ),
      ),
    );
  }
}
