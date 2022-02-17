
import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(),
            _SingleCard()
            ]
        )
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {
 
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
            backgroundColor: Colors.blue,
            child: Icon(Icons.pie_chart_outline_sharp,size: 35,),
            radius: 30,
          ),
          Text('General',style: TextStyle(color: Colors.blue,fontSize: 18))
        ],
      ),
    );
  }
}