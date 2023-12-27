import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {

  void _singOut()async{
    await FirebaseAuth.instance.signOut();
  }
  final user = FirebaseAuth.instance.currentUser!;
   Homepage({super.key});
   


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Center(child: Text("Home Bage"),),
        actions: [
          IconButton(onPressed: _singOut,
           icon: Icon(Icons.logout))
        ],
      ),
      body:Center(
        child: Text("Welcome :- "+user.email!,
        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
    );
  }
}