import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDark;
  final Widget child;

  ThemeProvider({required this.isDark, required this.child}) : super(child: child);

  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}