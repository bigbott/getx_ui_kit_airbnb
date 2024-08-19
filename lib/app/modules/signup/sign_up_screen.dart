import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_ui_kit_property/app/global_widgets/primary_button.dart';
import 'package:getx_ui_kit_property/app/global_widgets/register_form.dart';
import 'package:getx_ui_kit_property/app/routes/app_pages.dart';
import 'package:getx_ui_kit_property/app/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'sign_up_controller.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.keyboard_backspace,
            color: Color.fromRGBO(33, 45, 82, 1),
          ),
        ),
        
      ),
      body: SingleChildScrollView(
        child: Builder(builder: (BuildContext context) {
          return Container(
            height: size.height -
                Scaffold.of(context)
                    .appBarMaxHeight!, //Body height removing appbar height
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Wrap(
                  runAlignment: WrapAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 30.0),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      width: double.infinity,
                      child: Column(
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 22.0,
                              color: Color.fromRGBO(33, 45, 82, 1),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //Leta take the form to a new page
                          RegisterForm(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                PrimaryButton(
                  text: "Get Started",
                  onPressed: () {
                    Get.toNamed(Routes.DASHBOARD);
                  },
                ),
                Center(
                  child: Wrap(
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.inter(
                          fontSize: 14.0,
                          color: Color.fromRGBO(64, 74, 106, 1),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Log In",
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                            color: Constants.primaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("/images/google.png"),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset("/images/facebook.png"),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
