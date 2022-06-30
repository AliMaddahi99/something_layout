import 'package:flutter/material.dart';
import 'package:something_layout/widgets/structure_card/no_structure.dart';
import 'package:something_layout/widgets/structure_card/structure_card.dart';

import 'package:something_layout/data/structure_list.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  final buildings = structures;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            const Text(
              "Dashboard",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            // App Logo Card
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              width: double.infinity,
              height: 135.0,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: -4.0,
                    blurRadius: 10.0,
                    offset: Offset(0.0, 8.0),
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.pets,
                        size: 44.0,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Lets Do",
                          style: TextStyle(
                            fontSize: 8.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Something",
                          style: TextStyle(
                            fontSize: 36.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Body title
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Structures",
                  style: TextStyle(
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

            // Body list
            buildings.isNotEmpty
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return StructureCard(
                            structureType: buildings[index].structureType,
                            numberOfRoom: buildings[index].numberOfRoom,
                            address: buildings[index].address,
                            valuables: buildings[index].valuables,
                            pictureUrl: buildings[index].pictureUrl,
                          );
                        },
                        itemCount: buildings.length,
                      ),
                    ),
                  )
                : const NoStructure(),
          ],
        ),
      ),
    );
  }
}
