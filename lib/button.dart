import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  var icon;
  MyButton({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          padding: EdgeInsets.all(20.0),
          width: 100.0,
          height: 100.0,
          child: Icon(
            icon,
            size: 37,
            color: Colors.grey,
          ),
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 3.0),
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(4.0, 4.0),
                    blurRadius: 15.0,
                    spreadRadius: 3.0),
              ],
              gradient: LinearGradient(colors: [
                Colors.grey[200],
                Colors.grey[300],
                Colors.grey[400],
                Colors.grey[500],
              ],
              stops: [
                0.1,
                0.3,
                0.8,
                1
              ]),
              )),
    );
  }
}
