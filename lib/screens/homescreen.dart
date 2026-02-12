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
      body: Center(
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
      )
    ),);
  }
}
