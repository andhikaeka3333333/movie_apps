import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/colors.dart';
import '../../widgets/main_button.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top container with rounded corners
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffffe7a4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(60),
                bottomRight: Radius.circular(60),
              ),
            ),
          ),
          Column(
            children: [
              SizedBox(height: 150),
              Center(
                  child: Image.asset(
                "images/profilemale.png",
                width: 150,
              )),
              SizedBox(height: 20),
              // Name
              Text(
                'Kylian Mbappe',
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffbc00),
                ),
              ),
              SizedBox(height: 8),
              // Email
              Text(
                'kylianmbappe@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              Expanded(child: Container()),
              // Logout Button
              MainButton(
                textButton: "LOGOUT",
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
                  Get.offNamed('/');
                },
              ),

              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}
