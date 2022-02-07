import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          
          //Titulo
          Title()
        ],
      ),
   );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text('Osheinin Lokae Camposro', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Kardesten, Switerman',style: TextStyle(color: Colors.black45)),
          ],
        ),
       
        Icon(Icons.star,color: Colors.red,),
        Text('41')
      ],
    );
  }
}