import 'package:flutter/material.dart';
void main(){
  runApp(home());
}
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainApp(

      )
      );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  int _selectedIndex=0;

   static const TextStyle  _mytext  = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold

   );
    

   
   

  var _listwidget = [
    Text("home page",style: _mytext,),
    Text("Insert page",style: _mytext),
    Text("About page",style: _mytext)

  ];
  void _ontab(index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: _listwidget[_selectedIndex],),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 250, 248, 248),
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 129, 30, 23)),child: Text("drawer" ,),
              ),
              ListTile(
              selected: _selectedIndex==0,
                title: Text("Home"),onTap: (){
                  _ontab(0);
                  Navigator.pop(context);
                },
              ),
               ListTile(
               selected: _selectedIndex==1,
                title: Text("insert"),onTap: (){ _ontab(1);
                Navigator.pop(context);},
              ),
               ListTile(
                 selected: _selectedIndex==2,
                title: Text("About"),onTap: (){ _ontab(2);
                Navigator.pop(context);},
              ),
          ]),
          
      ),
    );
  }
}


