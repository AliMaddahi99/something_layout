import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  const CardButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      decoration: BoxDecoration(
        color: Colors.white24,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: IconButton(
        color: Colors.white,
        onPressed: onPressed,
        splashRadius: 1,
        iconSize: 20.0,
        icon: icon,
      ),
    );
  }
}
