import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GridTileWidget extends StatelessWidget {
  const GridTileWidget({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.imageName,
  });
  final String textOne;
  final String textTwo;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridTile(
          footer: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text(textOne,
                        style: Theme.of(context).textTheme.titleLarge),
                    Text(textTwo,
                        style: Theme.of(context).textTheme.titleMedium),
                  ],
                ),
                MaterialButton(
                  color: const Color(0xffE42F45),
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  height: 6.h,
                  minWidth: 15.w,
                  splashColor: Colors.red,
                  onPressed: () {},
                  child: Text("Buy Now", style: TextStyle(fontSize: 16.sp,color: Colors.white)),
                ),
              ],
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              height: 300,
              "assets/images/$imageName.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
