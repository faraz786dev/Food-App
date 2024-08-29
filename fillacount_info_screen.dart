

import 'package:flutter/material.dart';
import 'package:practice/screens/home_screen.dart';
import 'package:practice/widgets/custom_text_field.dart';
import 'package:practice/widgets/customer_text+button.dart';

class FillAcountInfoScreen extends StatefulWidget {
  const FillAcountInfoScreen({super.key});

  @override
  State<FillAcountInfoScreen> createState() => _FillAcountInfoScreenState();
}

class _FillAcountInfoScreenState extends State<FillAcountInfoScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String firstNameText = '';
  String lastNameText = '';
  String passText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 242, 241), // Deep yellow
        foregroundColor: Color.fromARGB(255, 16, 128, 2),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Continue",
              style: TextStyle(
                color: firstNameText.isEmpty ||
                        lastNameText.isEmpty ||
                        passText.isEmpty
                    ? Color.fromARGB(255, 0, 161, 14)
                    : Color.fromARGB(255, 5, 5, 5),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromARGB(255, 12, 128, 1), Color.fromARGB(255, 13, 138, 2)], // Deep yellow to white
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
                        "assets/profile_icon.png",
                        width: 60,
                      ),
                    ),
                    Text(
                      "Let's get you started!",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                         color: Colors.white
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "First, let's create an account with foodpanda official @awangmail.com",
                      style: TextStyle(
                        fontSize: 15,
                         color: Colors.white
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 7),
                            child: CustomTextField(
                              controller: firstNameController,
                              labeltext: "First Name",
                              onChanged: (value) {
                                setState(() {
                                  firstNameText = value;
                                  
                                }
                                );
                                
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: CustomTextField(
                              controller: lastNameController,
                              labeltext: "Last Name",
                              onChanged: (value) {
                                setState(() {
                                  lastNameText = value;
                                });
                              },
                            ),
                            
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
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
                  text: "Continue",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  isDisabled: firstNameText.isEmpty ||
                              lastNameText.isEmpty ||
                              passText.isEmpty,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

