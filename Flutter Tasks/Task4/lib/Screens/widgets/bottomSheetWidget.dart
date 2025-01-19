import 'dart:io';

import '../../models/contact.dart';
import 'package:contacts/AppColors.dart';
import 'package:contacts/Screens/widgets/customTextField.dart';
import 'package:contacts/Screens/widgets/inputCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class BottomSheetWidget extends StatefulWidget {
  BottomSheetWidget({super.key, required});

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  File? image;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        padding: MediaQuery.of(context).viewInsets,
        margin: EdgeInsets.all(16),
        child: Wrap(
          children: [
            InputCard(
              nameController: nameController,
              emailController: emailController,
              phoneController: phoneController,
              image: image,
              onClick: () async {
                ImagePicker _picker = ImagePicker();
                var pickedFile =
                    await _picker.pickImage(source: ImageSource.gallery);
                if (pickedFile != null) {
                  setState(() {
                    image = File(pickedFile.path);
                  });
                }
              },
            ),
            CustomTextField(
              textInputType: TextInputType.name,
              validator: (value) => value.isEmpty ? "" : null,
              ctrl: nameController,
              hint: "Enter User Name ",
            ),
            CustomTextField(
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value.isEmpty) {
                  return "Enter User Email ";
                } else if (!RegExp(
                        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                    .hasMatch(value)) {
                  return "Enter Valid Email";
                }
              },
              ctrl: emailController,
              hint: "Enter User Email ",
            ),
            CustomTextField(
              textInputType: TextInputType.phone,
              validator: (value) {
                if (value.isEmpty) {
                  return "Enter User Phone ";
                } else if (!RegExp(r'^01[0125][0-9]{8}$').hasMatch(value)) {
                  return "Enter Valid Phone";
                }
              },
              ctrl: phoneController,
              hint: "Enter User Phone ",
            ),
            FilledButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  if (image == null) {
                    return;
                  }
                  Contact.contacts.add(Contact(
                      photo: image!.path,
                      name: nameController.text,
                      number: phoneController.text,
                      email: emailController.text));

                  Navigator.pop(context);
                }
              },
              style: FilledButton.styleFrom(
                  backgroundColor: AppColors.gold,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter User",
                      style: GoogleFonts.inter(
                          color: AppColors.darkBlue, fontSize: 20),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
