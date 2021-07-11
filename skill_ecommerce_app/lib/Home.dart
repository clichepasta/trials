import 'package:flutter/material.dart';
import 'package:skill_ecommerce_app/bottomNav.dart';
import 'package:skill_ecommerce_app/gridView.dart';
import 'package:skill_ecommerce_app/listView.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool viewCheck = true;
  @override
  Widget build(BuildContext context) {
    // int indexNow = 0;
    final tabs = [gridView(), listView()];
    return new Scaffold(
        appBar: AppBar(
          title: Text(
            'SkillKart',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          actions: [
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            )
          ],
        ),
        body: viewCheck ? gridView() : listView());
//
  }
}
