import 'package:flutter/material.dart';


class CounterFunctionsScreen extends StatefulWidget {

  
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {


  int clickCounter=0;

  @override
  Widget build(BuildContext context) {
    //Barra superior de herramientas
    return Scaffold(
        appBar: AppBar(
          title: Center(child:Text("Counter Function")), 
          actions: [
            IconButton(
            icon: Icon(Icons.refresh_rounded),
            onPressed: () {  
              setState(() {
                clickCounter=0;
              });
          }, 

          ),
          ],
        ),

        // cuerpo del programa con numeros y el texto click
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$clickCounter",
              style: TextStyle( fontSize: 160,fontWeight:FontWeight.w100)),
              if(clickCounter == 1)
                Text("Click",style: TextStyle( fontSize: 50,fontWeight: FontWeight.w100)),
              if(clickCounter != 1)
                Text("Clicks",style: TextStyle( fontSize: 50,fontWeight: FontWeight.w100)),
            ],
        ),),


//Control de boton
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomBottom(icon: Icons.plus_one,
              onPressed: (){
                setState(() {
                  clickCounter ++;
                });
              },
             ),
            const SizedBox( height: 15),
            CustomBottom(icon:Icons.refresh_outlined,
              onPressed: (){
                setState(() {
                  clickCounter=0;
                });
              }, 
            ),
            const SizedBox( height: 15),
            CustomBottom(icon: Icons.exposure_minus_1_outlined,
            onPressed: (){
              setState(() {
                if(clickCounter == 0) return;
                clickCounter --;
              });
            },
            ),
          ],
        )
          );
    }
}


//Widget personalizado
class CustomBottom extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;



  const CustomBottom({
    super.key, 
    required this.icon,
    this.onPressed
    
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:onPressed,
      child: Icon(icon),
      );
  }
}