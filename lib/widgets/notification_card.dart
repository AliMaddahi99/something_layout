import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final String title;
  final String text;
  final String date;
  final String time;
  final bool seen;

  const NotificationCard({
    Key? key,
    required this.title,
    required this.text,
    required this.date,
    required this.time,
    required this.seen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shadowColor: Colors.black38,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        height: 150.0,
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title first letter
                Container(
                  width: 45.0,
                  height: 45.0,
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      title[0],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),

                // Title and text
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          text,
                          maxLines: 5,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontSize: 10.0,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Seen circle
                Container(
                  width: 10.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    color: seen ? Colors.blue : Colors.grey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),

            // Date and Time
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 10.0,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
