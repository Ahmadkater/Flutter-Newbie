import 'package:contacts/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Emptylist extends StatelessWidget {
  const Emptylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Lottie.asset("assets/animations/empty_list.json"),
        Center(
          child: Text(
            "There is No Contacts Added Here",
            style: GoogleFonts.inter(
                color: AppColors.gold,
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
