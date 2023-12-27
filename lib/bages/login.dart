
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bages/SignUp.dart';
import 'package:flutter_application_1/utility/mybutton.dart';
import 'package:flutter_application_1/utility/myimage.dart';
import 'package:flutter_application_1/utility/textField.dart';
import 'package:flutter_application_1/utility/textHead.dart';
class Login extends StatelessWidget {
   Login ({super.key});
  final TextEditingController _emailcontroller= TextEditingController();
  final TextEditingController _passwordcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    void _SignIn()async{
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: _emailcontroller.text,
    password: _passwordcontroller.text
    
  );

    }




    return Scaffold(
      body: ListView(
        children: [
          MyImage(imagesrc: 'images/mylogin.png', imageHeigth: 260),
          Container(
            padding: EdgeInsets.only(top: 10,left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHead(
                  headerText: 'Login',
                isFontWeight: true,
                fontSize:40, ),
                SizedBox(
                  height: 30,
                  ),
                myTextField(
                  mycontroller: _emailcontroller,
                  hintText: 'Email ID', 
                  prefixIcon: Icon(Icons.alternate_email_outlined)),
                  SizedBox(height: 30,),
                myTextField(
                  mycontroller: _passwordcontroller,
                  hintText: 'Password', 
                prefixIcon: Icon(Icons.lock),obscureText: true,),
                  SizedBox(height: 30,),
                MyButton(
                  onTap: _SignIn,
                  btnText: 'Login',),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New User Please? ',
                    style: TextStyle(fontSize:25 ),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SingUp()));
                      },
                      child: Text('Registor',
                      style: TextStyle(fontSize:25 ,
                      color: Color.fromARGB(255, 7, 118, 209),fontWeight: FontWeight.bold),),
                    ),
                  ],
                )

              ],
           
            )),




        ],),

      
    );
  }
}