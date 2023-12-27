import 'package:flutter/material.dart';
void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
              width: 100,
              color: Colors.orange,
            ),
              Container(
              height: 200,
              width: 100,
              color: Colors.blue,
            ),
              Container(
              height: 200,
              width: 100,
              color: Colors.green,
            ),
              Container(
              height: 200,
              width: 100,
              color: Colors.red,
            ),
              Container(
              height: 200,
              width: 100,
              color: Colors.black,
            )
          ],
        ),
      ),
      
      
    );
  }
}