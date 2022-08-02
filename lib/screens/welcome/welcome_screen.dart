// @dart = 2.9

import 'package:flutter/material.dart';
import 'package:shopapp/screens/welcome/components/body.dart';
import 'package:splashscreen/splashscreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new AfterSplash(),
      image: new Image.asset('assets/images/splash.png'),
      backgroundColor: Colors.white,
      photoSize: 350.0,
      onClick: () => print("Flutter Egypt"),
      useLoader: false,
    );
  }
}

class AfterSplash extends StatelessWidget {
  const AfterSplash({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
