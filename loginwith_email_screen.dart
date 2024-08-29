

import 'package:flutter/material.dart';
import 'package:practice/screens/fillacount_info_screen.dart';
import 'package:practice/screens/verification_email_screen.dart';
import 'package:practice/widgets/custom_text_field.dart';
import 'package:practice/widgets/customer_text+button.dart';

class LoginwithEmailScreen extends StatefulWidget {
  const LoginwithEmailScreen({super.key});

  @override
  State<LoginwithEmailScreen> createState() => _LoginwithEmailScreenState();
}

class _LoginwithEmailScreenState extends State<LoginwithEmailScreen> {
  TextEditingController passController = TextEditingController();
  String passText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 250, 121, 0),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromARGB(255, 14, 163, 1), Color.fromARGB(255, 0, 114, 6)],
          ),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15, bottom: 20),
                      child: Image.asset(
                        "assets/login_icon.png",
                        width: 60,
                      ),
                    ),
                    Text(
                      "Login with your email",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                         color: Colors.white
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Login with your password, dear food lover",
                      style: TextStyle(
                        fontSize: 15,
                         color: Colors.white
                      ),
                    ),
                    SizedBox(height: 30),
                    CustomTextField(
                      controller: passController,
                      labeltext: "Password",
                      onChanged: (value) {
                        setState(() {
                          passText = value;
                        });
                      },
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "I forgot my password",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[200],
                ),
                CustomerTextButton(
                  text: "Login with Password",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FillAcountInfoScreen(),
                      ),
                    );
                  },
                  isDisabled: passText.isEmpty,
                ),
                SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerificationEmailScreen(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 247, 248),
                      border: Border.all(
                        color: Color.fromARGB(255, 167, 143, 153),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Send me a login link',
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 7, 7),
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
