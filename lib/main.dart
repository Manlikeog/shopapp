import 'package:flutter/material.dart';
import 'package:shopapp/constants.dart';
import 'package:shopapp/screens/cart/cart_screen.dart';
import 'package:shopapp/screens/home/details/details_screen.dart';

import 'package:shopapp/screens/profile/profile_screen.dart';

import 'package:provider/provider.dart';
import 'package:shopapp/screens/welcome/welcome_screen.dart';

import 'providers/products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            textTheme: Theme.of(context).textTheme.apply(bodyColor: KTextColor),
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primaryColor: Color(0xff013b47)),
        initialRoute: '/',
        routes: {
          '/': (ctx) => WelcomeScreen(),
          DetailScreen.routeName: (ctx) => DetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          ProfileScreen.routeName: (ctx) => ProfileScreen(),
        },
      ),
    );
  }
}
