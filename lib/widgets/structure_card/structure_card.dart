import 'package:flutter/material.dart';
import 'package:something_layout/styles/structure_card_text_style.dart';
import 'package:something_layout/widgets/structure_card/card_button.dart';

class StructureCard extends StatelessWidget {
  final String structureType;
  final int numberOfRoom;
  final String address;
  final double valuables;
  final String pictureUrl;

  const StructureCard({
    Key? key,
    required this.structureType,
    required this.numberOfRoom,
    required this.address,
    required this.valuables,
    required this.pictureUrl,
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
        padding: const EdgeInsets.all(14.0),
        height: 160.0,
        width: double.infinity,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.network(
                  fit: BoxFit.cover,
                  pictureUrl,
                  color: Colors.black45,
                  colorBlendMode: BlendMode.multiply,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CardButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share_outlined),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        CardButton(
                          onPressed: () {},
                          icon: const Icon(Icons.delete_outlined),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        CardButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit_outlined),
                        ),
                      ],
                    ),
                    const Spacer(flex: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          structureType,
                          style: cardStructureTextStyle,
                        ),
                        Text(numberOfRoom.toString(),
                            style: cardStructureTextStyle),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120.0,
                          child: Text(
                            address,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 8.0,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Valuables",
                              style: cardStructureTextStyle,
                            ),
                            Text(
                              "\$$valuables",
                              style: cardStructureTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
