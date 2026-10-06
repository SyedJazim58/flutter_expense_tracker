import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? componentcontroller;
  final String? hintText;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  
  const CustomTextField({super.key, this.componentcontroller, required this.hintText, this.suffixIcon, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
         controller: componentcontroller,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon, size: 20,),
        suffixIcon: Icon(suffixIcon, size: 20,),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
      ),  

      );
    
  }
}