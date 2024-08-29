// import 'package:flutter/material.dart';
// import 'package:practice/widgets/custom_text_field.dart';
// import 'package:practice/widgets/customer_text+button.dart';


// class VerificationEmailScreen extends StatefulWidget {
//   const VerificationEmailScreen({super.key});

//   @override
//   State<VerificationEmailScreen> createState() => _VerificationEmailScreenState();
// }

// class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFFFFD700),
//         foregroundColor: Color.fromARGB(255, 0, 0, 0),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(15),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(bottom: 20),
//                     child: Image.asset(
//                       "assets/email_icon.png",
//                       width: 80,
//                     ),
//                   ),
//                   Text(
//                     "Verify your email address to get started",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     "This helps us to mitigate fraud and keep your personal data safe.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Column(
//               children: [
//                 Divider(
//                   height: 40,
//                   color: Colors.grey[200],
//                 ),
//                 CustomerTextButton(
//                   text: "Send verification email",
//                   onPressed: () {
//                     // Navigator.push(context, 
//                     // MaterialPageRoute(builder: (context)
//                     // => LoginwithEmailScreen(),
//                     // ));
//                   },
//                   isDisabled: false,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



//gpt


import 'package:flutter/material.dart';
import 'package:practice/widgets/custom_text_field.dart';
import 'package:practice/widgets/customer_text+button.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() => _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFD700),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color(0xFFFFD700), Colors.white],
          ),
        ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      "assets/email_icon.png",
                      width: 80,
                    ),
                  ),
                  Text(
                    "Verify your email address to get started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "This helps us to mitigate fraud and keep your personal data safe.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Divider(
                  height: 40,
                  color: Colors.grey[200],
                ),
                CustomerTextButton(
                  text: "Send verification email",
                  onPressed: () {
                    // Navigator.push(context, 
                    // MaterialPageRoute(builder: (context)
                    // => LoginwithEmailScreen(),
                    // ));
                  },
                  isDisabled: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
