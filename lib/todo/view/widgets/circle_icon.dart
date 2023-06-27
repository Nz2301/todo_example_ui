import 'package:flutter/material.dart';
import 'package:todo_app/utils/utils.dart';

class CircleIcon extends StatelessWidget {
  const CircleIcon({
    super.key,
    this.onTap,
    required this.icons,
    this.textColor = Colors.white,
    this.backgroundColor = titleTextColor,
  });
  final void Function()? onTap;
  final IconData icons;
  final Color textColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Icon(
          icons,
          size: 30,
          color: textColor,
        ),
      ),
    );
  }
}
