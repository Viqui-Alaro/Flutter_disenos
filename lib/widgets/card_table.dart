
import 'dart:ui';

import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue,icon: Icons.border_all,text: 'General',),
            _SingleCard(color: Colors.pinkAccent,icon: Icons.car_rental,text: 'Trasport')
            ]
        ),
         TableRow(
          children: [
            _SingleCard(color: Colors.purple,icon: Icons.g_mobiledata_outlined,text: 'Servicios',),
            _SingleCard(color: Colors.orange,icon: Icons.access_time_filled_rounded,text: 'Horario')
            ]
        ),
         TableRow(
          children: [
            _SingleCard(color: Colors.greenAccent,icon: Icons.whatshot,text: 'Hospitales',),
            _SingleCard(color: Colors.yellow,icon: Icons.baby_changing_station_outlined,text: 'Accesorios')
            ]
        ),
         TableRow(
          children: [
            _SingleCard(color: Colors.green,icon: Icons.agriculture,text: 'Policia',),
            _SingleCard(color: Colors.cyanAccent,icon: Icons.account_box_sharp,text: 'Policia')
            ]
        ),
         TableRow(
          children: [
            _SingleCard(color: Colors.orange,icon: Icons.align_horizontal_center_sharp,text: 'Becas',),
            _SingleCard(color: Colors.purple,icon: Icons.airline_seat_flat_outlined,text: 'Embajada')
            ]
        ),
         TableRow(
          children: [
            _SingleCard(color: Colors.brown,icon: Icons.videocam_off_outlined,text: 'Redes',),
            _SingleCard(color: Colors.teal,icon: Icons.tonality_rounded,text: 'Biblioteca')
            ]
        )
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {
  
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({Key? key, 
  required this.icon, 
  required this.color, 
  required this.text}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return _CardBackground(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(this.icon,size: 35,color: Colors.white,),
           radius: 30,
        ),
       Text(this.text,style: TextStyle(color: this.color,fontSize: 18))
      ],
    ));
  }
}


class _CardBackground extends StatelessWidget {

  final Widget child;
  const _CardBackground({
    Key? key,
    required this.child
    }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5,sigmaY: 5),
          child: Container(
            margin: EdgeInsets.all(15),
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}