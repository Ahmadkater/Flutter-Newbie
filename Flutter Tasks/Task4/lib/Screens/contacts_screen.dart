import 'dart:convert';
import 'dart:io';

import 'package:contacts/AppColors.dart';
import 'package:contacts/Screens/widgets/ContactWidget.dart';
import 'package:contacts/Screens/widgets/bottomSheetWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:contacts/Screens/widgets/emptyList.dart';

import '../models/contact.dart';

class ContactsScreen extends StatefulWidget {
  ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController emailController = TextEditingController();
  // TextEditingController phoneController = TextEditingController();
  //List<Contact> contacts = Contact.contacts;
  File? image;

  @override
  void initState() {
    _loadName();
  }

  void _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBlue,
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        title: Image.asset(
          color: AppColors.white,
          "assets/icons/route.png",
          width: 117.w,
          height: 39.h,
        ),
      ),
      body: Contact.contacts.isEmpty
          ? Emptylist()
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.7),
              itemCount: Contact.contacts.length,
              itemBuilder: (context, index) => ContactWidget(
                    onClick: (int index) {
                      Contact.contacts.removeAt(index);
                      setState(() {});
                    },
                    myContact: Contact.contacts[index],
                    index: index,
                  )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: !Contact.contacts.isEmpty,
            child: FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () {
                Contact.contacts.removeAt(Contact.contacts.length - 1);
                setState(() {});
              },
              child: Icon(
                Icons.delete,
                color: AppColors.white,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Visibility(
            visible: Contact.contacts.length <= 6,
            child: FloatingActionButton(
              onPressed: _ShowModalButtomSheet,
              child: Icon(
                Icons.add,
                color: AppColors.darkBlue,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _ShowModalButtomSheet() async {
    await showModalBottomSheet(
        backgroundColor: AppColors.darkBlue,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return BottomSheetWidget();
        });

    setState(() {});
  }

  // _saveContacts() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   List<String> contactsJsonList =
  //   Contact.map((contact) => contact.toJson()).toList();
  //   prefs.setString('contacts', json.encode(contactsJsonList));
  // }
}
