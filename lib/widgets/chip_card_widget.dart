
import 'package:flutter/material.dart';

class ChipCardWidget extends StatelessWidget {
  const ChipCardWidget({
    super.key,
    required this.style,
    required this.color,
    required this.name,
  });
  final TextStyle? style;
  final Color? color;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Text(name, style: style),
      ),
    );
  }
}
 