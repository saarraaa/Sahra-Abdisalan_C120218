import 'package:flutter/material.dart';
import 'package:flutter_application_1/chapters/Screen2.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(mainapp());
}
class mainapp extends StatelessWidget {
  const mainapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Homepage() ,
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  



  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

    late TextEditingController _mycontroller;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _mycontroller=TextEditingController();
    

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            TextField(
          controller: _mycontroller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter Your Name",
          ),
        ),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute
          (builder:(context)=>Screentwo(name: _mycontroller.text),));
           },
           child: Text("submit"),
           
           
       ),
       Text("welcome",style: GoogleFonts.silkscreen(
        textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
        )
       ))
          ],
          
        
        ) 
        
        
      ),
    );
  }
}