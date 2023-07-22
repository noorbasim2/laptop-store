// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LapInfoPage extends StatelessWidget {
  LapInfoPage({super.key, required this.imgName});
  final String imgName;

  List Details = [
    "World-leading 16” 3.2K 120 Hz OLED touchscreen",
    "13th Gen​ Intel® Core™ ​ i9-13980HX",
    "NVIDIA RTX™ 3000 Ada Laptop GPU",
    "180° lay-flat hinge",
    "8 TB SSD",
    "64 GB RAM",
    "ASUS IceCool Pro thermal technology",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Hero(
              tag: "tag4",
              child: Image(
                height: 30.h,
                width: double.infinity,
                fit: BoxFit.contain,
                image: AssetImage(
                  "assets/images/test/$imgName.png",
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 40, right: 10, left: 10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ProArt Studiobook pro 16",
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.favorite_border),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "₹1,95,780",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                              Text("4.8",
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              Text("(73 Reviews)",
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                            ],
                          ),
                        ),
                        ExpansionTile(
                          title: Text("Details",
                              style: Theme.of(context).textTheme.bodyLarge),
                          children: [
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: Details.length,
                              itemBuilder: (BuildContext context, int i) {
                                return Text("● ${Details[i]}",
                                    style:
                                        Theme.of(context).textTheme.bodyMedium);
                              },
                            ),
                          ],
                        ),
                        ExpansionTile(
                          title: Text("Description",
                              style: Theme.of(context).textTheme.bodyLarge),
                          children: [
                            Text(
                                "The new ProArt Studiobook Pro 16 OLED is a powerful mobile workstation that exceeds all expectations and goes far beyond the extraordinary. Its unstoppable 13th Gen Intel® Core™ i9-13980HX processor, pro-grade NVIDIA RTX™ 3000 Ada Generation Laptop GPU, vast amounts of memory and ultrafast storage will supercharge your content creation workflow and let your imagination do what it does best. The certified color-accurate 16-inch 3.2K 120 Hz OLED touchscreen will do full justice to your creative vision, and you'll enjoy unrivaled precision control of your apps with the large, stylus-compatible haptic touchpad and intuitive ASUS Dial rotary control. Take your creativity to the next level with ProArt Studiobook Pro 16 OLED. ",
                                style: Theme.of(context).textTheme.bodySmall)
                          ],
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                    Positioned(
                      bottom: 2.h,
                      left: 10.w,
                      right: 10.w,
                      child: MaterialButton(
                        height: 7.h,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        child: const Text("Buy Now",
                            style: TextStyle(color: Colors.white)),
                        color: const Color(0xffE42F45),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
