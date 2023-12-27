import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(homepage());
}
class homepage extends StatefulWidget {
  
  const homepage({super.key});
  

  @override
  State<homepage> createState() => _homepageState();
  
}

class _homepageState extends State<homepage> {
    int _currentitem=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: IconButton(
             onPressed: (){}, 
              icon: FaIcon(FontAwesomeIcons.motorcycle))
              ),

             bottomNavigationBar: BottomNavyBar(
              selectedIndex: _currentitem,
              items:[ BottomNavyBarItem(icon:FaIcon(FontAwesomeIcons.motorcycle ),
              title: Text("Home"),),
              BottomNavyBarItem(icon:FaIcon(FontAwesomeIcons.motorcycle ),
              title: Text("Home"),),
               BottomNavyBarItem(icon:FaIcon(FontAwesomeIcons.motorcycle ),
              title: Text("Home"),),
              
              ],
              onItemSelected: (index){
                setState(() {
                  _currentitem=index;
                });
              }
              ),
      ),
    );
  }
}
