import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_ui_kit_property/app/global_widgets/property_features.dart';
import 'package:getx_ui_kit_property/app/routes/app_pages.dart';
import 'package:getx_ui_kit_property/app/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'property_controller.dart';

class PropertyScreen extends GetView<PropertyController> {
  const PropertyScreen({super.key});
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
      body: Builder(builder: (BuildContext context) {
        double heightFromWhiteBg =
            size.height - 300.0; // height for white section
        return SingleChildScrollView(
          child: Container(
            height: size.height,
            child: Stack(
              children: [
                Positioned(
                  width: size.width,
                  child: Container(
                    height: size.height,
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage("/images/single-bg.png"),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 350.0,
                  width: size.width,
                  child: Container(
                    height: heightFromWhiteBg,
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.0,
                      vertical: 20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Soneve Kiri",
                              style: TextStyle(
                                fontSize: 18.0,
                                height: 1.5,
                                color: Color.fromRGBO(33, 45, 82, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Icon(
                              Icons.favorite,
                              color: Constants.primaryColor,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.map,
                              color: Color.fromRGBO(138, 150, 190, 1),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Text(
                                "Bashundhara, Dhaka, Bangladesh",
                                style: GoogleFonts.inter(
                                  fontSize: 16.0,
                                  color: Color.fromRGBO(64, 74, 104, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        //Property features
                        PropertyFeatures(),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "This is one of the best houses you can get around the vicinity, check in to experience pleasure.",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.inter(
                            fontSize: 15.0,
                            height: 1.5,
                            color: Color.fromRGBO(138, 150, 190, 1),
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 16.0, right: 5.0),
                          height: 56,
                          decoration: BoxDecoration(
                            color: Constants.primaryColor,
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "120\$ / ",
                                      style: GoogleFonts.inter(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " night",
                                      style: GoogleFonts.inter(),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 215),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.BOOKING);
                                },
                                child: Container(
                                  height: 45,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(24.0),
                                    color: Colors.white,
                                  ),
                                  child: Text(
                                    "BOOK ROOM",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
