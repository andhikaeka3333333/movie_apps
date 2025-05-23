import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/login_controller.dart';
import '../widgets/colors.dart';
import '../widgets/main_button.dart';
import '../widgets/my_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffbc00)),
                    ),
                    Text("Please login to continue",
                        style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60),
                      bottomRight: Radius.circular(60),
                    ),
                    color: Color(0xffffe7a4))),
            MyTextField(
              marginTop: 100,
              marginLeft: 60,
              marginRight: 60,
              enabledBorderColor: secondaryColor,
              focusedBorderColor: primaryColor,
              labelColor: blackColor,
              labelText: 'Username',
              obscureText: false,
              onChanged: (String value) {
                loginController.username.value = value;
              },
            ),
            MyTextField(
              marginTop: 20,
              marginLeft: 60,
              marginRight: 60,
              enabledBorderColor: secondaryColor,
              focusedBorderColor: primaryColor,
              labelColor: blackColor,
              labelText: 'Password',
              obscureText: true,
              onChanged: (String value) {
                loginController.password.value = value;
              },
            ),
            Container(
              margin: EdgeInsets.only(top: 70),
              child: MainButton(
                textButton: "LOGIN",
                textColor: buttonTextColor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                font: 'Mulish',
                buttonBackgroundColor: buttonBackgroundColor,
                buttonWidth: 75.0,
                buttonHeight: 24.0,
                buttonHorizontalPadding: 50,
                buttonVerticalPadding: 20,
                buttonRadius: 50.0,
                onPresssed: () {
                  loginController.login();
                },
              ),
            )
          ]),
        ),
      ),
    );
  }
}

// Get.toNamed('/dashboard');
