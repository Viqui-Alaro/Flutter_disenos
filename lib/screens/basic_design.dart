import 'package:flutter/material.dart';


class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          
          //Titulo
          Title(),
          //button Section
          ButtonSection(),
          // Description
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('En cuanto a la temática, ¡puedes encontrarlos de todo tipo! En el mercado existen cuentos de todo tipo, hasta de las temáticas que nunca te hubieras imaginado. Cuentos, por supuesto, con valores, pero también cuentos para tratar los celos ante la llegada de un hermanito, para cuando el niño tiene piojos, para trabajar los problemas de autoestima, para hablar de temas como el bullying o el acoso escolar... ¡No hay excusa para empezar a descubrirles el maravilloso mundo que encierran los cuentos!'))

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
    return Container(
    
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Osheinin Lokae Camposro', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('Kardesten, Switerman',style: TextStyle(color: Colors.black45)),
            ],
          ),
          Expanded(child: Container()),
         
          Icon(Icons.star,color: Colors.red,),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call,text: 'CALL'),
          CustomButton(icon: Icons.send,text: 'ROUTE'),
          CustomButton(icon: Icons.share,text: 'SHARE')
          
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Icon(this.icon,color: Colors.blue,size: 25,),
         Text(this.text,style: TextStyle(color: Colors.blue))
        ],
    );
  }
}