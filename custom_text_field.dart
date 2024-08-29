import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String labeltext;
  bool noIcon;
  Function(String)? onChanged;
   CustomTextField(
    {super.key,
     required this.controller,
    required this.labeltext,
    this.noIcon = true,
    this.onChanged});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  bool isObsecure = false;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: isObsecure,
      onChanged: widget.onChanged,
      controller: widget.controller,
      decoration: InputDecoration(suffixIconColor: Color.fromARGB(255, 1, 248, 112),
      suffixIcon: widget.noIcon 
      ? SizedBox()
       : IconButton(
        onPressed: () {
        setState(() {
          isObsecure = !isObsecure;
        });
      }, icon: isObsecure
      ? Icon(Icons.visibility)
      : Icon(Icons.visibility_off),
      ),

      labelText: widget.labeltext,
      contentPadding: EdgeInsets.all(15),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey[200]!,
        ),
      ),


      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.grey[200]!,
        ),
      ),
      ),
    );
  }
}