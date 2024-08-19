
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_ui_kit_property/app/data/property.dart';
import 'package:getx_ui_kit_property/app/routes/app_pages.dart';
import 'package:getx_ui_kit_property/app/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseCard extends StatelessWidget {
  final Property house;
  const HouseCard({super.key, required this.house});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed(Routes.PROPERTY);
      },
      child: Container(
        height: 300.0,
        width: 255.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Color(0xFFF4F5F6),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      house.imagePath,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    house.name,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color.fromRGBO(33, 45, 82, 1),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    house.description,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Color.fromRGBO(138, 150, 190, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "From\n",
                              style: GoogleFonts.inter(
                                color: Color.fromRGBO(64, 74, 106, 1),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            TextSpan(
                              text: house.price,
                              style: GoogleFonts.inter(
                                color: Color.fromRGBO(33, 45, 82, 1),
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite,
                          color: Constants.primaryColor,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
