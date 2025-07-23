import 'package:flutter/material.dart';
import 'package:fsignup/login.dart';
import 'package:fsignup/services.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.9),
          child: Column(
            children: [
              Text(
                "Signup",
                style: TextStyle(color: Colors.black, fontSize: 40),
              ),
              SizedBox(height: 30),
              Text(
                "create your account,its free",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.topLeft,
                child: Text("username", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2),
              TextField(
                controller: usernameController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),

              SizedBox(height: 00),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Email", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2),

              TextField(
                controller: emailController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 1),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Password", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  " Confirm Password",
                  style: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(height: 2),
              TextField(
                controller: confirmPasswordController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  signup(
                    username: usernameController.text,
                    email: emailController.text,
                    password: passwordController.text,
                    confirmpassword: confirmPasswordController.text,
                    context: context,
                  );
                },
                child: Align(
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
