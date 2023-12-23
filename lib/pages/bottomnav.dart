import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:foodhub/pages/home.dart';
import 'package:foodhub/pages/order.dart';
import 'package:foodhub/pages/profile.dart';
import 'package:foodhub/pages/wallet.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Wallet wallet;
  late Order order;
  late Profile profile;

  @override
  void initState() {
    //sequence
    homepage = Home();
    order = Order();
    wallet = Wallet();
    profile = Profile();
    pages = [homepage, order, wallet, profile];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Color.fromARGB(255, 218, 108, 11),
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex=index;
          });
        },
        items: [
        Icon(
          Icons.home_outlined,
          color: Colors.black,),
          Icon(
            Icons.shopping_bag,
            color: Colors.black,
          ),
          Icon(
          Icons.wallet,
          color: Colors.black,
        ),
        Icon(
          Icons.person_outlined,
          color: Colors.black,
        ),
          ]),
          body: pages[currentTabIndex],
    );
  }
}
