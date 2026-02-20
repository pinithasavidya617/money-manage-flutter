import 'package:flutter/material.dart';
import 'package:money_manage/configs/size_config.dart';

import '../widgets/transaction_items.dart';

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
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 15, vertical: SizeConfig.blockHeight * 1.5),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25)
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
            ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 5, vertical: SizeConfig.blockHeight),
                    padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 5, vertical: SizeConfig.blockHeight * 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Color(0xFF5C6FE4), Color(0xFFD67EB0)],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                        stops: [0.3, 0.7])
                    ),
                    height: SizeConfig.blockHeight * 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockWidth * 5,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            IconButton(onPressed: (){},
                                icon: Icon(Icons.more_horiz), color: Colors.white,),
                          ],

                        ),
                        SizedBox(height: SizeConfig.blockHeight * 0.1,),
                        Text(
                          "\$3,550.00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockWidth * 8,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Income",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: SizeConfig.blockWidth * 4,
                                    fontWeight: FontWeight.bold
                                ),),
                                Text("\$2,500",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: SizeConfig.blockWidth * 6,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Expense",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: SizeConfig.blockWidth * 4,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Text("\$950",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: SizeConfig.blockWidth * 6,
                                      fontWeight: FontWeight.bold
                                  ),
                                )                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockHeight * 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 5, vertical: SizeConfig.blockHeight),
                            child: Text(
                              "Recent Transactions",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: SizeConfig.blockWidth * 6,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: SizeConfig.blockWidth * 5),
                            child: TextButton(onPressed: () {},
                                child: Text("See All",
                                style: TextStyle(
                                  fontSize: SizeConfig.blockWidth * 5
                                ),)),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockWidth * 4, vertical: SizeConfig.blockHeight),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      color: Color(0xFFEBEDF0)
                    ),
                    child: Column(
                      children: [
                        TransactionItem(
                          icon: Icons.shopping_cart,
                          title: "Groceries",
                          date: "Today",
                          amount: "-\$120.00",
                          isExpense: true,
                        ),
                        TransactionItem(
                          icon: Icons.attach_money,
                          title: "Salary",
                          date: "Mar 25",
                          amount: "-\$2000.00",
                          isExpense: false,
                        ),
                        TransactionItem(
                          icon: Icons.local_taxi,
                          title: "Uber",
                          date: "Mar 24",
                          amount: "-\$35.00",
                          isExpense: true,
                        ),
                        TransactionItem(
                          icon: Icons.shopping_cart_checkout,
                          title: "Online Store",
                          date: "Mar 20",
                          amount: "-\$150.00",
                          isExpense: true,
                        ),
                        TransactionItem(
                          icon: Icons.food_bank,
                          title: "Bank Transfer",
                          date: "Mar 19",
                          amount: "-\$100.00",
                          isExpense: true,
                        )
                      ]
                    ),
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
