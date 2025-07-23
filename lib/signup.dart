import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),

              SizedBox(height: 00),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Email", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2),

              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 1),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Password", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2),
              TextField(
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
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Align(
                  child: Text(
                    "Signup",
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                  ),
                ),
              ),
              SizedBox(height: 20),Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Text("Already have an account?"),
              SizedBox(width: 5),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
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