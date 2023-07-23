// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:laptop_store/theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'main_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp(isDark: false));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.isDark});
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return Builder(
          builder: (context) {
            return ThemeProvider(
              isDark: isDark,
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                home: const MainPage(),
                themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
                darkTheme: ThemeData.dark(useMaterial3: true).copyWith(
                  brightness: Brightness.light,
                  scaffoldBackgroundColor: const Color(0xff1E1E1E),
                  appBarTheme: const AppBarTheme(
                    actionsIconTheme: IconThemeData(color: Colors.white),
                    backgroundColor: Color(0xff1E1E1E),
                  ),
                  expansionTileTheme: const ExpansionTileThemeData(),
                  textTheme: TextTheme(
                    bodyLarge: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyMedium: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    bodySmall: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                    titleLarge: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    titleSmall: TextStyle(
                      color: const Color(0xffE42F45),
                      fontSize: 15.sp,
                    ),
                  ),
                  navigationBarTheme: NavigationBarThemeData(
                    backgroundColor: Colors.red.withOpacity(.1),
                  ),
                ),
                theme: ThemeData.light().copyWith(
                  useMaterial3: true,
                  brightness: Brightness.light,
                  scaffoldBackgroundColor: const Color(0xffDFDFDF),
                  appBarTheme: const AppBarTheme(
                    actionsIconTheme: IconThemeData(color: Colors.black),
                    backgroundColor: Color(0xffDFDFDF),
                  ),
                  textTheme: TextTheme(
                    bodyLarge: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    bodyMedium: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    bodySmall: TextStyle(
                      color: Colors.black,
                      fontSize: 15.sp,
                    ),
                    titleLarge: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    titleMedium: TextStyle(
                      color: const Color(0xffDFDFDF),
                      fontSize: 15.sp,
                    ),
                    titleSmall: TextStyle(
                      color: const Color(0xffE42F45),
                      fontSize: 15.sp,
                    ),
                  ),
                  navigationBarTheme: const NavigationBarThemeData(
                    backgroundColor: Colors.black,
                    shadowColor: Colors.black,
                    surfaceTintColor: Colors.black,
                    indicatorColor: Colors.amber,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
