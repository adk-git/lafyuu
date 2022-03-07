import 'package:flutter/material.dart';
import 'package:lafyuu/src/ui/main/main_screen.dart';

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(platform: TargetPlatform.iOS),
      home: const MainScreen(),
    ),
  );
}
