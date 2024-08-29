import 'package:flutter/material.dart';

class CustomerTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isDisabled;

  const CustomerTextButton(
    {super.key,
    required this.text,
    required this.onPressed,
    required this.isDisabled,
    }
  );

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: isDisabled ? null : onPressed,
      child: Container(width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 18),
      decoration: BoxDecoration(
        color: isDisabled ? Color.fromARGB(255, 253, 136, 1) : Color.fromARGB(255, 252, 255, 254),
        borderRadius: BorderRadius.circular(8),
      ),

        child: Center(
          child: Text(text, textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 5, 5, 5),
            fontSize: 15,
          )
          ), 
          ),
      ),
    );
    
  }
}