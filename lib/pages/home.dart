import 'package:flutter/material.dart';
import 'package:mob_application/pages/details.dart';
import 'package:mob_application/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool menlogo=false, womanlogo=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 40.0, left: 10.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "MILO JACOB Atelier",
            style:AppWidget.boldTextFieldStyle()
              ),
                       
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 3.0,),
            Text(
              "Hello CLANSMAN",
              style:AppWidget.headlineTextFieldStyle(),),
            Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(color: Colors.orange),
          child: const Icon(
            Icons.shopping_cart, 
            color: Colors.black,
          ),
        )
      ],
    ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        GestureDetector(
          onTap: (){
            menlogo=true;
            womanlogo=false;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(40),
            child: Container(
              decoration: BoxDecoration(color: menlogo?Colors.black: Colors.white, borderRadius: BorderRadius.circular(40)),
              padding: const EdgeInsets.all(25),
              child: Image.asset('./images/men_logo.png', height: 60, width: 50, color: menlogo? Colors.white: Colors.black,),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            menlogo=false;
            womanlogo=true;
            setState(() {
              
            });

          },

       child: Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(40),
          child: Container(
          decoration: BoxDecoration(color: womanlogo?Colors.black: Colors.white, borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.all(10),
          child: Image.asset('./images/woman_logo.png', height: 90, width: 80, color: womanlogo? Colors.white: Colors.black),
          ),
          ),
        ),
      ] 
    ),
      const SizedBox(height: 20.0),
      SingleChildScrollView(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Material(
            child: 
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Details()),
                );
              },
              child: Container( 
              padding: const EdgeInsets.all(8),
              child: Column(children: [
              Image.asset('./images/TS-02.png', height: 200, width: 200, fit: BoxFit.cover),
               Text("T-shirts", style: AppWidget.semiBoldTextFieldStyle(),),
                    ]
                   ),
                  ),
            ),
          ),
          
          Material(
            child: Container( 
            padding: const EdgeInsets.all(10),
            child: Column(children: [
            Image.asset('./images/Shorts.jpg', height: 200, width: 200, fit: BoxFit.cover),
             Text("Shorts", style: AppWidget.semiBoldTextFieldStyle(),
             
             ),
            ]
          ),
         ),
        ),
      ]
         
     ),
    ),
    const Spacer(),
    const SizedBox(height: 10.0),
    Row(children: [
    Image.asset('./images/CP-01.jpeg', height: 200, width: 200, fit: BoxFit.cover),
    Text("Pants", style: AppWidget.semiBoldTextFieldStyle(),
     ),
    ]),
  ],
              
         
   ),
  ));

     
    
  }  
  
}
