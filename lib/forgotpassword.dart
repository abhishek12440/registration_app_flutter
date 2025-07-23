import 'package:flutter/material.dart';

class Forgotpassword extends StatelessWidget {
  const Forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text("forgot password", style: TextStyle(fontSize: 40)),
              SizedBox(height: 100),
              Align(
                alignment: Alignment.topLeft,
                child: Text("Email", style: TextStyle(color: Colors.black)),
              ),

              SizedBox(height: 2),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),SizedBox(height: 25,),
            ElevatedButton(onPressed: () {
              
            }, child: Text("send Link",))],
          ),
        ),
      ),
    );
  }
}
