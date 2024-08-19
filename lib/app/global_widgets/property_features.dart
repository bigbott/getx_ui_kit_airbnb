import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyFeatures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          item(Icons.people, "2 Adults"),
          SizedBox(
            width: 10.0,
          ),
          item(Icons.bed, "1 Bed"),
          SizedBox(
            width: 10.0,
          ),
          item(Icons.wifi, "Free Wifi")
        ],
      ),
    );
  }
}

Widget item(IconData icon, String text) {
  return Expanded(
    child: Container(
      height: 40.0,
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 16.0,
            color: Color(0xFF494A6A),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            text,
            style: GoogleFonts.inter(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: Color(0xFF494A6A),
            ),
          )
        ],
      ),
    ),
  );
}
