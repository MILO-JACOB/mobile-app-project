import 'package:flutter/material.dart';
import 'package:mob_application/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
int a=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0, bottom: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_ios_new_outlined, 
          color: Colors.black)),
        Image.asset("./images/TS-01.png", 
        width: 400.0, 
        height: 400.0, 
        fit: BoxFit.fill,
        ),
        const SizedBox(height: 10.0, width: 5.0),
        
        Row(
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Oversized short sleeve T-shirt with", style: AppWidget.semiBoldTextFieldStyle(),),
            ],
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              if(a>1){
              --a;
              }
              setState(() {
                
              });

            },
                  
          child: Container(
            decoration: BoxDecoration(color:Colors.black, borderRadius: BorderRadius.circular(8)),
            child: const Icon(
             Icons.remove, color: Colors.white,),
          ),
          ),
          const SizedBox(width: 20.0),
          Text(a.toString(), style: AppWidget.semiBoldTextFieldStyle(),),
          const SizedBox(width: 20.0),
          GestureDetector(
            onTap: (){
              ++a;
              setState(() {
                
              });
            },
            child: Container(
            
              decoration: BoxDecoration(color:Colors.black, borderRadius: BorderRadius.circular(8)),
              child: const Icon(
                Icons.add, color: Colors.white,),
            ),
          )
        
        ]
        ),
        const SizedBox(height: 3.0,),
        Text("MILO JACOB Insignia print", 
        style: AppWidget.semiBoldTextFieldStyle(),
        ),
        const SizedBox(height: 30.0),
          Row(children: [
          Text('Delivery Date', 
          style: AppWidget.semiBoldTextFieldStyle(),),
          const Icon (Icons.date_range, color: Colors.black,),
          const SizedBox(width: 5.0,),
         const SizedBox(width: 3.0,),
          Text('10-15 days', 
          style: AppWidget.semiBoldTextFieldStyle(),),
       ],),
       const Spacer(),
        Padding(
        padding: const EdgeInsets.only(bottom: 50.0,),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Item(s) total: \$10', style: AppWidget.semiBoldTextFieldStyle(),),
              Text('Shipping: Free delivery on Orders over \$50', style: AppWidget.semiBoldTextFieldStyle(),),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width/3,
            padding: const EdgeInsets.all(5.0),
            decoration: const BoxDecoration(color: Colors.black),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              const Text('Add to cart', style: TextStyle(color: Colors.white, fontSize: 10.0, fontFamily: 'Cinzel'),),
              const SizedBox(width: 5.0,),
              Container(
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(8)),
                child: const Icon(Icons.shopping_cart_outlined, color: Colors.black,),
              )
            ],)
          ),
        ],)

       ),
                
      ],),
      
    ));
  }
}