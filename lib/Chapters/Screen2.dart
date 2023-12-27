import 'package:flutter/material.dart';
class Screentwo extends StatelessWidget {
  static const TextStyle _mysyle =TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold
  );
  final String name;
  const Screentwo({super.key ,required this.name});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(children: [
          Text("Your Name is ", style: _mysyle,),
          Text(name , style: _mysyle,)
        ],)),
      );
    
  }
}