import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/dounat_tab.dart';
import '../tab/pancakes_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';
import '../util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    const MyTab(iconPath: "lib/icons/donut.png"),
    const MyTab(iconPath: "lib/icons/burger.png"),
    const MyTab(iconPath: "lib/icons/pancakes.png"),
    const MyTab(iconPath: "lib/icons/pizza.png"),
    const MyTab(iconPath: "lib/icons/smoothie.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 12),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 36,
                color: Colors.grey[800],
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                  color: Colors.grey[800],
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Row(
                children: const [
                  Text(
                    "I want to eat",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    " EAT",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TabBar(tabs: myTabs),
            Expanded(
                child: TabBarView(
              children: [
                DonutTab(),
                const BurgerTab(),
                const PancakesTab(),
                const PizzaTab(),
                const SmoothieTab(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
