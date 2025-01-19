import 'dart:convert';
import 'dart:io';

import 'package:contacts/AppColors.dart';
import 'package:contacts/models/contact.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddButtomSheet extends StatefulWidget {
  TextEditingController nameController;
  TextEditingController emailController;
  TextEditingController phoneController;

  Function(Contact val) onEnterUser;

  AddButtomSheet({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.phoneController,
    required this.onEnterUser,
  });

  @override
  State<AddButtomSheet> createState() => _AddButtomSheetState();
}

class _AddButtomSheetState extends State<AddButtomSheet> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  // Function to pick image
  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  String name = "User Name";
  String phone = "+200000000000";
  String email = "example@email.com";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40.r)),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: _pickImage,
                      borderRadius: BorderRadius.circular(28.r),
                      child: Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 1, color: AppColors.white),
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          width: 143.w,
                          height: 146.h,
                          child: _image == null
                              ? Lottie.asset(
                                  "assets/animations/image_picker.json")
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(28.r),
                                  child:
                                      Image.file(_image!, fit: BoxFit.cover)))),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                        Container(
                          width: 160.w,
                          height: 1.h,
                          color: AppColors.white,
                        ),
                        Text(email,
                            style: GoogleFonts.inter(color: AppColors.white)),
                        Container(
                          width: 160.w,
                          height: 1.h,
                          color: AppColors.white,
                        ),
                        Text(
                          phone,
                          style: GoogleFonts.inter(color: AppColors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                  controller: widget.nameController,
                  onChanged: onNameChanged,
                  style: GoogleFonts.inter(color: AppColors.white),
                  decoration: InputDecoration(
                      hintText: "Enter User Name",
                      hintStyle: GoogleFonts.inter(color: AppColors.white),
                      contentPadding: EdgeInsets.all(20),
                      filled: false,
                      fillColor: AppColors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                  controller: widget.emailController,
                  onChanged: onEmailChanged,
                  style: GoogleFonts.inter(color: AppColors.white),
                  decoration: InputDecoration(
                      hintText: "Enter User Email",
                      hintStyle: GoogleFonts.inter(color: AppColors.white),
                      contentPadding: EdgeInsets.all(20),
                      filled: false,
                      fillColor: AppColors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: TextField(
                  controller: widget.phoneController,
                  onChanged: onPhoneChanged,
                  style: GoogleFonts.inter(color: AppColors.white),
                  decoration: InputDecoration(
                      hintText: "Enter User Phone",
                      hintStyle: GoogleFonts.inter(color: AppColors.white),
                      contentPadding: EdgeInsets.all(20),
                      filled: false,
                      fillColor: AppColors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide:
                              BorderSide(color: AppColors.white, width: 1)))),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.r))),
                onPressed: onEnterUser,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    "Enter User",
                    style: GoogleFonts.inter(
                        color: AppColors.darkBlue, fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onEmailChanged(val) {
    setState(() {
      val.isEmpty ? email = "example@email.com" : email = val;
    });
  }

  void onNameChanged(val) {
    setState(() {
      val.isEmpty ? name = "User Name" : name = val;
    });
  }

  void onPhoneChanged(val) {
    setState(() {
      val.isEmpty ? phone = "+200000000000" : phone = val;
    });
  }

  Contact onEnterUser() {
    Navigator.pop(context);
    return Contact(name: "name", number: "number");
  }
}
