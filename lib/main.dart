import 'package:flutter/material.dart';
import 'package:money_manage/configs/size_config.dart';
import 'screens/home_screen.dart';
import 'screens/launch_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child){
        SizeConfig.init(context);
        return child!;
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const LaunchScreen(title: "title"),
    );
  }
}
