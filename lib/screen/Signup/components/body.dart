import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:newlogin/components/already_have_an_account_acheck.dart';
import 'package:newlogin/components/rounded_button.dart';
import 'package:newlogin/components/rounded_input_address.dart';
import 'package:newlogin/components/rounded_input_field.dart';
import 'package:newlogin/components/rounded_input_name.dart';
import 'package:newlogin/components/rounded_password_field.dart';
import 'package:newlogin/components/rounded_reenter_password.dart';
import 'package:newlogin/screen/Login/components/background.dart';
import 'package:newlogin/screen/Login/login_screen.dart';
// import 'package:newlogin/screen/Signup/components/or_divider.dart';
// import 'package:newlogin/screen/Signup/components/social_icon.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            // SvgPicture.asset(
            //   "assets/icons/signup.svg",
            //   height: size.height * 0.35,
            // ),
            RoundedInputName(
              hintText: "Enter Your Name",
              onChanged: (value) {},
            ),
            RoundedInputAddress(
              hintText: "Enter Your Address",
              onChanged: (value) {},
            ),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedReenterPassword(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
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
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
            // OrDivider(),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     SocalIcon(
            //       iconSrc: "assets/icons/facebook.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/twitter.svg",
            //       press: () {},
            //     ),
            //     SocalIcon(
            //       iconSrc: "assets/icons/google-plus.svg",
            //       press: () {},
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
