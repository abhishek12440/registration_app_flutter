import 'package:flutter/material.dart';
import 'package:fsignup/login.dart';
import 'package:fsignup/signup.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text("WELCOME", style: TextStyle(fontSize: 40)),
              Image(image: AssetImage("welcome1.jpg")),SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Login(),),);},
                child: Align(child: Text("login", style: TextStyle(fontSize: 30,color: Colors.black))),
              ),
SizedBox(height: 30,),

ElevatedButton(
  
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),),);},
             child: Align(child: Text("SignUp", style: TextStyle(fontSize: 30,)),), style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }
}
