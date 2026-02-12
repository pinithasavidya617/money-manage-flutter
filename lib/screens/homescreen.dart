import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFEDECF5)
                    ),
                    child: Center(
                        child: Image.asset('assets/images/wallet.jpeg', width: 200,)
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Text("Save your money",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.grey,
                  fontStyle: FontStyle.normal),),
              ),
              Container(
                child: Text("with Expense Tracker",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold, color: Colors.grey,
                      fontStyle: FontStyle.normal),),
              ),
              Container(
                padding: EdgeInsets.only(top: 28),
                child: Text(
                    "Save money! The more your money\n"
                    "works for you, the less you have to work\n"
                    "for money",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.grey, height: 1.5)),
              ),
              SizedBox(
                height: 100,
              ),

            ],
            
          )
        ],
      ),);
  }
}
