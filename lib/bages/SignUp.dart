
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bages/login.dart';
import 'package:flutter_application_1/utility/mybutton.dart';
import 'package:flutter_application_1/utility/myimage.dart';
import 'package:flutter_application_1/utility/textField.dart';
import 'package:flutter_application_1/utility/textHead.dart';


class SingUp extends StatefulWidget {
 

  
   SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final TextEditingController _emailcontroller= TextEditingController();

  final TextEditingController _passwordcontroller= TextEditingController();

  final TextEditingController _confirmcontroller= TextEditingController();

  @override
  Widget build(BuildContext context) {

    void _showError(msg){
    showDialog(context: context, 
    builder: (context){
      return Center(
        child: AlertDialog(
          title: Text((msg),),
        ),
      );
    });}



void _SignUp()async{
if (_passwordcontroller.text==_confirmcontroller.text) {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailcontroller.text,
      password: _passwordcontroller.text);


    

  } on FirebaseAuthException catch (e) {
   if (e.code == 'weak-password') {
    _showError('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    _showError('The account already exists for that email.');
  }}}
else{
_showError("password miss matched");
}
}
    return Scaffold(
      body: ListView(
        children: [
          MyImage(imagesrc: 'images/signup.png', imageHeigth: 250),
          Container(
            padding: EdgeInsets.only(top: 10, right: 20,left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHead(headerText: 'Sing up',isFontWeight: true,fontSize: 40,),
                SizedBox(height: 25,),
               myTextField(
                mycontroller: _emailcontroller,
                  hintText: 'Email ID', 
                  prefixIcon: Icon(Icons.alternate_email_outlined)),
                  SizedBox(height: 25,),
                    myTextField(
                     mycontroller: _passwordcontroller, 
                  hintText: 'Password', 
                  prefixIcon: Icon(Icons.lock),obscureText: true,),
                  SizedBox(height: 25,),
                    myTextField(
                      mycontroller: _confirmcontroller,
                  hintText: 'Confirm Password', 
                  prefixIcon: Icon(Icons.lock),obscureText: true),
                  SizedBox(height: 25,),
                  MyButton(
                    onTap: _SignUp,
                    btnText: 'Sign Up'),
                  SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('I have Acount? ' , style: TextStyle(fontSize:25 )),
                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context, MaterialPageRoute(builder: (context)=>Login()));
                      },



                      child: Text('Login ', style: TextStyle(fontSize:25 ,
                        color: Color.fromARGB(255, 7, 118, 209),fontWeight: FontWeight.bold)),
                    ),

                  ],
                )


              ],

            ),
          )

        ],
      ),

    );
  }
}