import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDark;
  @override
  // ignore: overridden_fields
  final Widget child;

  const ThemeProvider({super.key, required this.isDark, required this.child})
      : super(child: child);

  static ThemeProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}
