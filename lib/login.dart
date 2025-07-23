import 'package:flutter/material.dart';
import 'package:fsignup/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.9),
          child: Column(
            children: [
              Text(
                "Login",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
              SizedBox(height: 30),
              Text(
                "login to your account",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Email", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),

              SizedBox(height: 00),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Password", style: TextStyle(color: Colors.black)),
              ),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),

              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Signup(),));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                child: Align(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 250, 243, 243),
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("Don't you have an account?"),
               SizedBox(width: 5,),
               GestureDetector(
                 onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                 },
                 child: Text(
                   'Signup',
                   style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                 ),
               ),
            ],
          ),
          Image.asset('assets/lock.png', height: 200, width: 200),
            ],
          ),
  )
      ),
    );

  }
}
