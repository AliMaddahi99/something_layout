import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  final String name;
  final String family;
  final String? profilePictureUrl;

  const ContactCard({
    Key? key,
    required this.name,
    required this.family,
    this.profilePictureUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.only(bottom: 22.0),
      elevation: 8.0,
      shadowColor: Colors.grey[50],
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 12.0,
            ),
            child: CircleAvatar(
              radius: 18.0,
              backgroundColor: Colors.blue,
              child: Text(
                "${name[0]}${family[0]}",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Text("$name $family"),
        ],
      ),
    );
  }
}
