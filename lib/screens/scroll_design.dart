import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),
          MainContent()
        ],
      )
   );
  }
}

class MainContent extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Text('11°', style: textStyle),
          Text('Miércoles',style: textStyle),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 100,color: Colors.white,)
        ],
      ),
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