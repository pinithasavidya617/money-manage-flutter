import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chevron_left),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 300,
                height: 45,
                child: ElevatedButton(onPressed: (){},
                 child: Text('March 2024')),
              ),
              Icon(Icons.chevron_right)
            ],
          ),
          Column(

          )
        ],
      ),
    );
  }
}
