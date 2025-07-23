import 'package:flutter/material.dart';
import 'package:fsignup/services.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {TextEditingController emailController = TextEditingController();
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

              SizedBox(height: 20),
              TextField(controller: emailController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),SizedBox(height: 25,),
            ElevatedButton(onPressed: () {resetPassword(email: emailController.text, context: context);
              
            }, child: Text("send Link",))],
          ),
        ),
      ),
    );
  }
}
