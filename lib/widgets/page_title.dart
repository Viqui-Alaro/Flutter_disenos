import 'package:flutter/material.dart';


class PageTitle extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      bottom: false,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text('SuperMercado Nala',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white)),
                SizedBox(height: 10,),
                Text('Productos especificos para mascotas (Perros y Gatos)',style: TextStyle(fontSize: 16,color: Colors.white))
            ],
          ),
    
      ),
    );
  }
}