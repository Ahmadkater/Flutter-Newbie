import 'dart:io';

import 'package:contacts/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class InputCard extends StatefulWidget {
  TextEditingController nameController;
  TextEditingController emailController;
  TextEditingController phoneController;
  File? image;
  Function onClick;

  InputCard(
      {super.key,
      required this.nameController,
      required this.emailController,
      required this.phoneController,
      this.image,
      required this.onClick});

  @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          InkWell(
              onTap: () async {
                await widget.onClick();
              },
              borderRadius: BorderRadius.circular(28.r),
              child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: AppColors.white),
                    borderRadius: BorderRadius.circular(28.r),
                  ),
                  width: 143.w,
                  height: 146.h,
                  child: widget.image == null
                      ? Lottie.asset("assets/animations/image_picker.json")
                      : ClipRRect(
                          borderRadius: BorderRadius.circular(28.r),
                          child:
                              Image.file(widget.image!, fit: BoxFit.cover)))),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ValueListenableBuilder(
                    valueListenable: widget.nameController,
                    builder: (context, value, child) => Text(
                      value.text.isEmpty ? "User Name" : value.text,
                      style: GoogleFonts.inter(color: AppColors.white),
                    ),
                  ),
                  Container(
                    width: 160.w,
                    height: 1.h,
                    color: AppColors.white,
                  ),
                  ValueListenableBuilder(
                    valueListenable: widget.emailController,
                    builder: (context, value, child) => Text(
                      value.text.isEmpty ? "User Email" : value.text,
                      style: GoogleFonts.inter(color: AppColors.white),
                    ),
                  ),
                  Container(
                    width: 160.w,
                    height: 1.h,
                    color: AppColors.white,
                  ),
                  ValueListenableBuilder(
                    valueListenable: widget.phoneController,
                    builder: (context, value, child) => Text(
                      value.text.isEmpty ? "User Phone" : value.text,
                      style: GoogleFonts.inter(color: AppColors.white),
                    ),
                  ),
                  Container(
                    width: 160.w,
                    height: 1.h,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
