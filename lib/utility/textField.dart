import 'package:flutter/material.dart';

class myTextField extends StatelessWidget {
  final String hintText;
  final Icon prefixIcon;
  final bool obscureText;
  final TextEditingController mycontroller;

  const myTextField({super.key ,
  required this.hintText,
  required this.prefixIcon,  required this.mycontroller,
  this.obscureText=false
   });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: mycontroller,
      obscureText:obscureText ,
      decoration: InputDecoration(hintText: hintText,
      prefixIcon:prefixIcon, ),

    );
  }
}