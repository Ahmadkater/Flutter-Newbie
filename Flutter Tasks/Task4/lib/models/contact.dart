import 'dart:convert';

class Contact {
  String name;
  String? photo;
  String? email;
  String number;

  Contact({required this.name, required this.number, this.email, this.photo}) {}

  static List<Contact> contacts = [];

  String toString() {
    return "${this.name}" + " " + "${this.email}" + " " + "${this.number}";
  }

  // Convert Contact to Map
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'number': number,
      'photo': photo,
    };
  }

  // Convert Map to Contact
  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(
      name: map['name'],
      email: map['email'],
      number: map['number'],
      photo: map['photo'],
    );
  }

  // Convert Contact to JSON String
  String toJson() => json.encode(toMap());

  // Convert JSON String to Contact
  factory Contact.fromJson(String source) =>
      Contact.fromMap(json.decode(source));
}
