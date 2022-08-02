import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopapp/screens/home/home_screen.dart';
import 'package:shopapp/screens/login/components/already_have_an_account.dart';
import 'package:shopapp/screens/login/components/rounded_input_field.dart';
import 'package:shopapp/screens/login/components/rounded_password_field.dart';
import 'package:shopapp/screens/login/login_screen.dart';
import 'package:shopapp/widgets/rounded_button.dart';

import 'options_divider.dart';

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
              SizedBox(
                height: size.height * 0.085,
              ),
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Image.asset(
                "assets/images/signup.jpg",
                height: size.height * 0.35,
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
                text: "SiGN UP",
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
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OptionDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIcon(
                    socialicon: "assets/icons/instagram.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    socialicon: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocialIcon(
                    socialicon: "assets/icons/linkedin.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String socialicon;
  final VoidCallback press;
  const SocialIcon({
    Key? key,
    required this.socialicon,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.blueGrey[100]!,
            ),
            shape: BoxShape.circle),
        child: SvgPicture.asset(
          socialicon,
          height: 20,
          width: 20,
          color: Color(0xff013b47),
        ),
      ),
    );
  }
}
