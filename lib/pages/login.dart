import 'package:flutter/material.dart';
import 'package:mob_application/pages/signup.dart';
import 'package:mob_application/widget/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF558B2F),
                Color(0xFF000000),
          ]),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
        child: Column(
          children: [
          Center(child: Image.asset('./images/Official_logo.png', width: MediaQuery.of(context).size.width/4, fit: BoxFit.cover,)),
          const SizedBox(height: 40.0),
          Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(50)),
            child:Column(children: [
              const SizedBox(
                height: 20.0,
                ),
              Text(
                "Login", 
                style: AppWidget.headlineTextFieldStyle(),
                ),
                const SizedBox(
                  height: 20.0,
                ),
              TextField(
          decoration: InputDecoration(
            hintText: 'Email', 
            hintStyle: AppWidget.semiBoldTextFieldStyle(), 
            prefix: const Icon(
              Icons.email_outlined)),
              ),
              const SizedBox(
                  height: 20.0,
                ),
              TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: 'Password', 
            hintStyle: AppWidget.semiBoldTextFieldStyle(), 
            prefix: const Icon(
              Icons.password_outlined)),
              ),
              const SizedBox(height: 20.0,),
              Container(
                alignment: Alignment.topRight,
                child: Text("Forgot Password?", style: AppWidget.semiBoldTextFieldStyle(),),
                ),
                const SizedBox(
                  height: 40.0,
                  ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    width: 100,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text('LOGIN', 
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 12.0, 
                          fontFamily: 'Cinzel', 
                          fontWeight: FontWeight.bold),
                          ),
                    ),
                  
                  ),
                ),
                const SizedBox(height: 50.0,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUp()));
                  },
              child: Text("Dont have an account yet? Sign up", style: AppWidget.semiBoldTextFieldStyle(),)),
          ]),
          ),
          ]),
          ),
        
        ],
        
        
      ),
      
    );
  }
}