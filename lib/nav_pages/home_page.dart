import 'package:flutter/material.dart';
import 'package:laptop_store/lap_info_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../main.dart';
import '../methods/text_field_method.dart';
import '../theme.dart';
import '../widgets/grid_tile_widget.dart';
import '../widgets/lap_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController pageController;

  @override
  void initState() {
    pageController = new PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home", style: Theme.of(context).textTheme.bodyLarge),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              final themeProvider = ThemeProvider.of(context);
              final newThemeMode = !themeProvider!.isDark;
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyApp(isDark: newThemeMode),
              ));
            },
            icon: Builder(
              builder: (context) {
                final themeProvider = ThemeProvider.of(context);
                return themeProvider!.isDark
                    ? const Icon(Icons.mode_night)
                    : const Icon(Icons.mode_night_outlined);
              },
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30.h,
                  margin: const EdgeInsets.only(
                      top: 10, bottom: 20, left: 10, right: 10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15)),
                  child: PageView(
                    controller: pageController,
                    // onPageChanged: (int index) =>
                    //     _currentPageNotifier.value = index,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      GridTileWidget(
                        textOne: "24-hour only!",
                        textTwo: "Take 30% off everything!",
                        imageName: "lap1",
                      ),
                      GridTileWidget(
                        textOne: "24-hour only!",
                        textTwo: "Take 30% off everything!",
                        imageName: "lap2",
                      ),
                      GridTileWidget(
                        textOne: "24-hour only!",
                        textTwo: "Take 30% off everything!",
                        imageName: "lap3",
                      ),
                    ],
                  ),
                ),
                Text("Discover", style: Theme.of(context).textTheme.bodyLarge),
                const SizedBox(height: 10),
                TextFieldMethod(
                    prefixIconColor: Color(0xff757575), hintText: "Search"),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Hot picks",
                        style: Theme.of(context).textTheme.bodyLarge),
                    InkWell(
                      onTap: () {},
                      child: Text("See All",
                          style: Theme.of(context).textTheme.titleSmall),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      LapCardWidget(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LapInfoPage(
                                imgName: "lap4",
                              ),
                            ),
                          );
                        },
                        textOne: "ProArt Studiobook Pro 16",
                        textTwo: "By Asus",
                        imageName: "lap4",
                      ),
                      LapCardWidget(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LapInfoPage(
                                imgName: "lap8",
                              ),
                            ),
                          );
                        },
                        textOne: "ASUS Zenbook Pro 16X OLED",
                        textTwo: "By Asus",
                        imageName: "lap8",
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recommended",
                        style: Theme.of(context).textTheme.bodyLarge),
                    InkWell(
                      onTap: () {},
                      child: Text("See All",
                          style: Theme.of(context).textTheme.titleSmall),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                  child: ListView(
                    // shrinkWrap: false,
                    scrollDirection: Axis.horizontal,
                    children: [
                      LapCardWidget(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LapInfoPage(
                                    imgName: "lap4",
                                  )));
                        },
                        textOne: "ProArt Studiobook Pro 16",
                        textTwo: "By Asus",
                        imageName: "lap4",
                      ),
                      LapCardWidget(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => LapInfoPage(
                                    imgName: "lap8",
                                  )));
                        },
                        textOne: "ASUS Zenbook Pro 16X OLED",
                        textTwo: "By Asus",
                        imageName: "lap8",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
