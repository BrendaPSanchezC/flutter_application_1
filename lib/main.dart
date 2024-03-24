import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:flutter_application_1/presentation/screens/counter/counter_screen.dart';

void main(){
  runApp( const Myapp());
}

class Myapp extends StatelessWidget{

  const Myapp({super.key});

  @override
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.pink
      ),
      home: const CounterFunctionsScreen()
    );
  }
}
