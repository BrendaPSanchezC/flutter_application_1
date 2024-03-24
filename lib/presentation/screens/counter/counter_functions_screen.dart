import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Counter Fnctions'),
        actions: [//actions hace que el boton salga de lado drecho y el otro sale del lado izquierdo
          IconButton(
          icon: const Icon(Icons.refresh_rounded),
          onPressed: () {
            setState(() {
              clickCounter = 0;
            });

          },
          ),
        ],
        ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100 ),),
          Text('Click${clickCounter == 1 ? '':'s'}',  style: const TextStyle(fontSize: 25),),
          ],
        ), 
        ),
        //Boton de aumentar
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,//Paraq ue el boton se coloque al final 
          children: [
        CustomButton(icon: Icons.refresh_rounded,
        onPressed: () {
          setState(() {
            clickCounter = 0;
          });
        },),
         const SizedBox(height: 10,),
         CustomButton(icon: Icons.exposure_minus_1_outlined,
         onPressed: () {
          if(clickCounter == 0) return;
          setState(() {
            clickCounter --;
          });
         },),
        const SizedBox(height: 10,),
         CustomButton(icon: Icons.plus_one,
         onPressed: (){
          setState(() {
            clickCounter ++;
          });
         },),
          ],
        )
    );
  }
}


//Clase para el boton personalizado
class CustomButton extends StatelessWidget {
final IconData icon;
final VoidCallback? onPressed;

  const CustomButton({
    super.key, required this.icon, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton
    (onPressed: onPressed,
    child: Icon(icon),
    );
  }
}