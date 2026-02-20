import 'package:flutter/material.dart';
import 'package:money_manage/configs/size_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {},
                    icon: Icon(Icons.chevron_left)),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockHeight * 5, vertical: SizeConfig.blockWidth * 3),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text(
                      "March 2025",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.blockWidth * 3
                      ),
                    ),
                  ),
                ),
                IconButton(onPressed: () {},
                    icon: Icon(Icons.chevron_right)),
              ],
            ),
            Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
