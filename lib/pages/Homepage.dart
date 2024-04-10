import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_delivery_app/pages/SignInPage.dart';

import '../Widgets/BestFoodWidget.dart';
import '../Widgets/BottomNavBarWidget.dart';
import '../Widgets/PopularFoodsWidget.dart';
import '../Widgets/SearchWidget.dart';
import '../Widgets/TopMenus.dart';
import '../animations/ScaleRoute.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        title: const Text(
          "What would you like to eat?",
          style: TextStyle(
              color: Color(0xFF3a3737),
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.notifications_none,
                color: Color(0xFF3a3737),
              ),
              onPressed: () {Navigator.push(context, ScaleRoute(page: const SignInPage()));})
        ], systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoodsWidget(),
            BestFoodWidget(),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
