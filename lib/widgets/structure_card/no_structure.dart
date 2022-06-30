import 'package:flutter/material.dart';

class NoStructure extends StatelessWidget {
  const NoStructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 50.0),
            child: Center(
              child: Column(
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4W5EVGYuDqbVdJzcKTx0GeclPQcvayqIBPA&usqp=CAU",
                  ),
                  const Text(
                    "You need to add your first structure by clicking the (+) below.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
