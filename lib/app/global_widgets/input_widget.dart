import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;
  final bool obscureText;

  InputWidget({ this.hintText, this.obscureText = false, 
                                  this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 59.0,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(247, 247, 249, 1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: TextFormField(
        obscureText: this.obscureText,
        decoration: InputDecoration(
          hintText: this.hintText,
          hintStyle: TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(124, 124, 124, 1),
            fontWeight: FontWeight.w600,
          ),
          suffixIcon: this.suffixIcon == null
              ? null
              : Icon(
                  this.suffixIcon,
                  color: Color.fromRGBO(105, 108, 121, 1),
                ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
