import 'package:flutter/material.dart';

class AcButton extends StatelessWidget {
  var icon;
  AcButton({Key key, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(5),
        width: 100,
        height: 100,
        child: Container(
          padding: EdgeInsets.all(20),
          height: 100,
          width: 100,
          child: Icon(
            icon,
            size: 35,
            color: Colors.grey[700],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 15.0,
                offset: Offset(4.0, 4.0),
                spreadRadius: 1.0
              ),
              BoxShadow(
                color: Colors.grey[600],
                blurRadius: 15.0,
                offset: Offset(-4.0, -4.0),
                spreadRadius: 1.0
              ),
            ],
            gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey[700],
                    Colors.grey[600],
                    Colors.grey[500],
                    Colors.grey[200],
                  ],
                  stops: [
                    0,
                    0.1,
                    0.3,
                    1
                  ]
          ),
        )
      ),
      decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
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
                ]
            )
        ),
      ),
    );
  }
}