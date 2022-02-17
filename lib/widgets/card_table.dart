
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
    return Container(
      margin: EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(this.icon,size: 35,),
            radius: 30,
          ),
          Text(this.text,style: TextStyle(color: this.color,fontSize: 18))
        ],
      ),
    );
  }
}