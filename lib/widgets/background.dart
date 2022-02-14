import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {

      final boxDecoration = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xff2E305F),
            Color(0xff202333)
          ]
        )
      );

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
       Container( decoration: boxDecoration ),
       _PinkBox()
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle:  -pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(263, 98, 188, 1),
              Color.fromRGBO(263, 98, 188, 0.5),
            ]
          )
        ),
      ),
    );
  }
}