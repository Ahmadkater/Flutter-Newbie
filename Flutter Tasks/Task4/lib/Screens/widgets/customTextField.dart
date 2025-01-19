import 'package:contacts/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

typedef CustomTextFieldCallBack = String? Function(String val);

class CustomTextField extends StatelessWidget {
  TextEditingController ctrl;
  String hint;
  CustomTextFieldCallBack validator;
  TextInputType textInputType;

  CustomTextField(
      {super.key,
      required this.ctrl,
      required this.hint,
      required this.validator,
      required this.textInputType});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
            readOnly: false,
            controller: ctrl,
            validator: (value) => validator(value!),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: GoogleFonts.inter(color: AppColors.white),
            keyboardType: textInputType,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: GoogleFonts.inter(color: AppColors.white),
              contentPadding: EdgeInsets.all(10),
              filled: false,
              fillColor: AppColors.white,
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: Colors.red, width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.gold, width: 1)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.gold, width: 1)),
              disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.gold, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.white, width: 1)),
            )),
        SizedBox(
          height: 16,
        )
      ],
    );
  }
}
