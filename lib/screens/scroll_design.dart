import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background()
        ],
      )
   );
  }
}

class Background extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      child: Image(image: AssetImage('assets/scroll-1.png')));
  }
}