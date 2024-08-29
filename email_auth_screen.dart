
import 'package:flutter/material.dart';
import 'package:practice/screens/loginwith_email_screen.dart';
import 'package:practice/widgets/custom_text_field.dart';
import 'package:practice/widgets/customer_text+button.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({super.key});

  @override
  State<EmailAuthScreen> createState() => _EmailAuthScreenState();
}

class _EmailAuthScreenState extends State<EmailAuthScreen> {
  TextEditingController emailController = TextEditingController();
  String emailText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 248, 142, 3),
        foregroundColor: Color.fromARGB(255, 250, 246, 246),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Continue",
              style: TextStyle(
                color: emailText.isEmpty ? Color.fromARGB(255, 255, 255, 255) : Color.fromARGB(255, 255, 254, 254),
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
             colors: [Color.fromARGB(255, 1, 204, 11), Color.fromARGB(255, 15, 129, 0)],
          ),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Text(
                    "What's your email?",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "We will check if you have an account",
                    style: TextStyle(fontSize: 15,  color: Colors.white),
                    
                  ),
                  SizedBox(height: 30),
                  CustomTextField(
                    controller: emailController,
                    labeltext: "Email",
                    
                    onChanged: (value) {
                      setState(() {
                        emailText = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 35,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            CustomerTextButton(
              text: "Continue",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginwithEmailScreen(),
                  ),
                );
              },
              isDisabled: emailText.isEmpty,
            ),
          ],
        ),
      ),
    );
  }
}