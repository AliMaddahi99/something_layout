import 'package:flutter/material.dart';
import 'package:something_layout/data/notification_list.dart';

import '../widgets/notification_card.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  final notifs = notifications;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Text(
              "Notification",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => NotificationCard(
                title: notifs[index].title,
                text: notifs[index].text,
                date: notifs[index].date,
                time: notifs[index].time,
                seen: notifs[index].seen,
              ),
              itemCount: notifs.length,
            ),
          ),
        ],
      ),
    );
  }
}
