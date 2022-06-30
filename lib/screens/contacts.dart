import 'package:flutter/material.dart';
import 'package:something_layout/widgets/contact_card.dart';

import 'package:something_layout/data/contact_list.dart';

class Contacts extends StatelessWidget {
  Contacts({Key? key}) : super(key: key);

  final contactNames = contacts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Back Button
            Container(
              width: 35.0,
              height: 35.0,
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                splashRadius: 1,
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 16.0,
                ),
              ),
            ),

            // Title
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "Contacts",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consectetur",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),

            // Search TextField
            TextField(
              style: const TextStyle(
                fontSize: 14.0,
              ),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                hintText: "Search Contact...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
            ),

            // ListView
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ContactCard(
                      name: contactNames[index].name,
                      family: contactNames[index].family,
                    );
                  },
                  itemCount: contactNames.length,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () => {},
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
