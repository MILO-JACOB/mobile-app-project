// ignore_for_file: use_build_context_synchronously, unused_element, unnecessary_null_comparison, unused_local_variable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mob_application/pages/bottomnav.dart';
import 'package:mob_application/pages/login.dart';
import 'package:mob_application/widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  String email="", password= "", name="";

TextEditingController namecontroller= TextEditingController();

TextEditingController passwordcontroller= TextEditingController();

TextEditingController emailcontroller= TextEditingController();

final _formKey= GlobalKey<FormState>();


registration()async{
  if (password != null){
    try{
      UserCredential userCredential= await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: password);

    ScaffoldMessenger.of(context).showSnackBar((const SnackBar(
      backgroundColor: Colors.blueAccent,
      content: Text(
        'Registration Successful', 
        style: TextStyle(fontSize: 5.0),)))); 
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNav()));
    }on FirebaseException catch(e){
      if(e.code=='weak-password'){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.blueAccent,
        content: Text(
          'Password provided is too weak', 
          style: TextStyle(fontSize: 10),)));  
    }
    else if (e.code=="email-already-in-use"){
     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      backgroundColor: Colors.blueAccent,
      content: Text(
        'Account exists already', 
        style: TextStyle(fontSize: 10),))); 
    }
    }
  }
}

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
            height: MediaQuery.of(context).size.height/1.5,
            decoration: BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(50)),
            child:Form(
              key: _formKey,
              child: Column(
                children: [
                const SizedBox(
                  height: 20.0,
                  ),
                Text(
                  "Sign Up", 
                  style: AppWidget.headlineTextFieldStyle(),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                TextFormField(
                  controller: namecontroller,
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return 'Please Enter E-mail';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                  hintText: 'Name', 
                  hintStyle: AppWidget.semiBoldTextFieldStyle(), 
                  prefix: const Icon(
                Icons.person_2_outlined)),
                ),
                const SizedBox(
                    height: 20.0,
                  ),
                TextFormField(
                  controller: emailcontroller,
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                decoration: InputDecoration(
                  hintText: 'Email', 
                  hintStyle: AppWidget.semiBoldTextFieldStyle(), 
                  prefix: const Icon(
                Icons.email_outlined)),
                ),
                const SizedBox(
                    height: 20.0,
                  ),
                TextFormField(
                  controller: passwordcontroller,
                  validator: (value){
                    if(value==null|| value.isEmpty){
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                        obscureText: true,
                        decoration: InputDecoration(
              hintText: 'Password', 
              hintStyle: AppWidget.semiBoldTextFieldStyle(), 
              prefix: const Icon(
                Icons.password_outlined)),
                ),
                const SizedBox(
                height: 40.0,
                ),
                  GestureDetector(
                    onTap: ()async{
                      if(_formKey.currentState!.validate()){
                        setState(() {
                          email= emailcontroller.text;
                          name= namecontroller.text;
                          email= passwordcontroller.text;

                        });
                      }
                      registration();
                    },
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        width: 100,
                        decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(5)),
                        child: const Center(
                          child: Text('Sign Up', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 12.0, 
                              fontFamily: 'Cinzel', 
                              fontWeight: FontWeight.bold),
                              ),
                        ),
                      
                      ),
                    ),
                  ),
                  const SizedBox(height: 50.0,),
                  GestureDetector(
                    onTap:() {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => const LogIn()));
                    },
                  child: 
                  Text("Already have an account? Login", 
                  style: AppWidget.semiBoldTextFieldStyle(),)),
                ],),
            ),
          ),
        ],
                
      ),
      ),
     ]),
    );
  }
}
