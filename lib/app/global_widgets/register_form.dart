import 'package:flutter/material.dart';
import 'package:getx_ui_kit_property/app/global_widgets/input_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
          child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text(
        "Email",
        style: GoogleFonts.inter(
          fontSize: 14.0,
          color: Color.fromRGBO(138, 150, 191, 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      InputWidget(),
      SizedBox(height: 10.0),
      Text(
        "Password",
        style: GoogleFonts.inter(
          fontSize: 14.0,
          color: Color.fromRGBO(138, 150, 191, 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      InputWidget(obscureText: true),
      SizedBox(
        height: 10.0,
      ),
      Text(
        "Confirm Password",
        style: GoogleFonts.inter(
          fontSize: 14.0,
          color: Color.fromRGBO(138, 150, 191, 1),
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(
        height: 5.0,
      ),
      InputWidget(obscureText: true),
    ],
          ),
        );
  }
}
