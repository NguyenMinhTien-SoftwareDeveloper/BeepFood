// ignore_for_file: unused_import

import 'package:appbeepfooddelivery/page/home.dart';
import 'package:appbeepfooddelivery/page/oder.dart';
import 'package:appbeepfooddelivery/page/profile.dart';
import 'package:appbeepfooddelivery/page/wallet.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dart:convert';
class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late Home homepage;
  late Order order;
  late Profile profile;
  late Wallet wallet;

  @override
  void initState() {
      homepage = Home();
      order = Order();
      profile = Profile();
      wallet = Wallet();
      pages = [homepage, order, profile, wallet];
      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.white,
        color: Colors.black,
        animationDuration: Duration(milliseconds: 500),
        onTap: (int index){
          setState(() {
            currentTabIndex = index;
          });
        },
        items:[
        Icon(
          Icons.home_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_bag_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.wallet_outlined,
          color: Colors.white,
        ),
        Icon(
          Icons.person_outlined,
          color: Colors.white,
        ),
      ]),
      body: pages[currentTabIndex],
    );
  }
}