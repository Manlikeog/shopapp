import 'package:flutter/material.dart';
import 'package:shopapp/screens/SignUp/signup_screen.dart';
import 'package:shopapp/screens/home/home_screen.dart';
import 'package:shopapp/widgets/rounded_button.dart';

import 'already_have_an_account.dart';
import 'rounded_input_field.dart';
import 'rounded_password_field.dart';

class Body extends StatelessWidget {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final email = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      key: _formkey,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Image.asset(
                "assets/images/login.png",
                height: size.height * 0.35,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              RoundedInputField(
                hintText: "Your Email",
                icon: Icons.person,
                onChanged: (value) {},
                controller: email,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your valid email address';
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              RoundedPasswordField(
                onChanged: (value) {},
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  } else if (!RegExp(r'(?=.*?[#?!@$%^&*-])').hasMatch(value)) {
                    return 'Password must have at least one special character';
                  }
                  return null;
                },
                controller: password,
              ),
              RoundedButton(
                text: "LOGIN",
                press: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  }
                },
                color: Color(0xff013b47),
                textColor: Colors.white,
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadyHaveAnAccount(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
