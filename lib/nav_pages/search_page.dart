import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:laptop_store/methods/text_field_method.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List lapName = [
    "ProArt Studiobook pro 16",
    "Asus Zenbook Pro 16X Oled",
    "Zenbook Pro 14 Duo Oled",
    "MacBook Pro 13",
    "MacBook Pro 13",
    "MacBook Pro 13",
    "MacBook Pro 13",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search", style: Theme.of(context).textTheme.bodyLarge),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldMethod(hintText: "Find your perfect laptop."),
            const SizedBox(height: 10),
            Text("Categories", style: Theme.of(context).textTheme.bodyLarge),
            Text("Categories"),
            Expanded(
              child: MasonryGridView.builder(
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: EdgeInsets.all(8.9),
                      child: Column(
                        children: [
                          Image.asset("assets/images/test/lap${index + 4}.png"),
                          Text("${lapName[index]}",
                              style: Theme.of(context).textTheme.bodyMedium),
                          Text("By Asus",
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
