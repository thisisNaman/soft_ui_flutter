import 'package:flutter/material.dart';
import 'button.dart';
import 'actv_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Soft UI Button",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var icon1 = Icons.home;
  var icon2 = Icons.favorite_border;
  var icon2_filled = Icons.favorite;
  var icon3 = Icons.info_outline;
  var icon3_filled = Icons.info;

  bool press1 = false;
  bool press2 = false;
  bool press3 = false;

  void pressed1() {
    setState(() {
      press1 = true;
      press2 = false;
      press3 = false;
    });
  }

  void pressed2() {
    setState(() {
      press1 = false;
      press2 = true;
      press3 = false;
    });
  }

  void pressed3() {
    setState(() {
      press1 = false;
      press2 = false;
      press3 = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: GestureDetector(
                      onTap: pressed1,
                      child: press1
                          ? AcButton(
                              icon: icon1,
                            )
                          : MyButton(
                              icon: icon1,
                            ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: pressed2,
                      child: press2
                          ? AcButton(
                              icon: icon2_filled,
                            )
                          : MyButton(
                              icon: icon2,
                            ),
                    )),
                    Expanded(
                        child: GestureDetector(
                      onTap: pressed3,
                      child: press3
                          ? AcButton(
                              icon: icon3_filled,
                            )
                          : MyButton(
                              icon: icon3,
                            ),
                    )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
