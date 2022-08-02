import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:shopapp/screens/cart/cart_screen.dart';
import 'package:shopapp/screens/home/home_screen.dart';
import 'package:shopapp/screens/profile/profile_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(
          "assets/icons/dotun.svg",
          color: Colors.blueGrey[100]!.withOpacity(0.7),
          height: 35,
        ),
        backgroundColor: Color(0xff013b47),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 15,
        elevation: 5,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      currentTab == 0 ? Icons.home : Icons.home_outlined,
                      color: currentTab == 0
                          ? Color(0xff013b47)
                          : Colors.blueGrey[100]!.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.10,
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = CartScreen();
                        currentTab = 2;
                      });
                    },
                    child: Icon(
                      currentTab == 2
                          ? Icons.shopping_cart
                          : Icons.shopping_cart_outlined,
                      color: currentTab == 2
                          ? Color(0xff013b47)
                          : Colors.blueGrey[100]!.withOpacity(0.7),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfileScreen();
                        currentTab = 3;
                      });
                    },
                    child: Icon(
                      currentTab == 3
                          ? Icons.person
                          : Icons.person_outline_sharp,
                      color: currentTab == 3
                          ? Color(0xff013b47)
                          : Colors.blueGrey[100]!.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
