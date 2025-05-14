import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:hw5/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder:
          (context, widget) => ResponsiveBreakpoints.builder(
            child: widget!,
            breakpoints: [
              const Breakpoint(start: 0, end: 599, name: MOBILE),
              const Breakpoint(start: 600, end: 1239, name: TABLET),
              const Breakpoint(start: 1240, end: 1920, name: DESKTOP),
            ],
          ),
      home: const HomePage(),
    );
  }
}
