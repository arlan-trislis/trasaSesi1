import 'package:flutter/material.dart';

// // Runapp adalah method untuk running class atau widget pertama
// void main()=>runApp(Container(
//   color: Colors.red,
// ));

// void main()=>runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//     );
//   }
// }

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: Drawer(),
      endDrawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.home),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Movie Apps"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // key.currentState.openEndDrawer();
              key.currentState.showSnackBar(SnackBar(
                content: Icon(Icons.android),
              ));
            },
            icon: Icon(Icons.settings),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset(
              "img/flutter.png",
              height: 70,
              color: Colors.green,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Image.asset(
                  "img/flutter.png",
                  height: 40,
                ),
              ),
              Container(
                child: Image.asset(
                  "img/flutter.png",
                  height: 40,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Container(
            child: Image.asset(
              "img/flutter.png",
              height: 70,
            ),
          ),
          Text(
            "Flutter",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 70,
            ),
          )
        ],
      ),
    );
  }
}
