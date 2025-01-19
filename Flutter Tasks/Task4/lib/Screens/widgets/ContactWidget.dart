import 'dart:io';

import 'package:contacts/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/contact.dart';

class ContactWidget extends StatelessWidget {
  Contact myContact;

  int index;

  Function onClick;
  ContactWidget(
      {super.key,
      required this.myContact,
      required this.index,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.gold, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image.file(
                    File(myContact.photo!),
                    fit: BoxFit.fitHeight,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        myContact.name,
                        style: GoogleFonts.inter(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: AppColors.darkBlue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Text(
                      myContact.email!,
                      style: GoogleFonts.inter(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: AppColors.darkBlue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Text(
                      myContact.number!,
                      style: GoogleFonts.inter(
                          fontSize: 10, fontWeight: FontWeight.w500),
                    ))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: AppColors.gold,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      onClick(index);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.delete,
                          color: AppColors.gold,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Delete",
                          style: GoogleFonts.inter(
                              fontSize: 10, fontWeight: FontWeight.w500),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
