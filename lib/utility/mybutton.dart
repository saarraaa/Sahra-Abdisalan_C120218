import 'dart:ffi';

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onTap;
   MyButton({super.key,required this.btnText,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            color:Color.fromARGB(255, 7, 118, 209)),
            height: 60,
            width: double.infinity,
            child: Center(
              child: 
              Text(btnText,
            style: TextStyle(
              color: Colors.white,
              fontSize:30 ,
              fontWeight:FontWeight.bold ),),

           ),

           
            
    
      ),
    );
  }
}