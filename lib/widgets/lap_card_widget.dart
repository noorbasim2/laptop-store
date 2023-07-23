import 'package:flutter/material.dart';

class LapCardWidget extends StatelessWidget {
  const LapCardWidget({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.imageName,
    this.onTap,
  });
  final String textOne;
  final String textTwo;
  final String imageName;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: InkWell(
                onTap: onTap,
                child: Hero(
                  tag: "tag4",
                  child: Image.asset(
                    // height: 20.h,
                    "assets/images/test/$imageName.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Text(textOne,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.bodyMedium),
          Text(textTwo,
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
