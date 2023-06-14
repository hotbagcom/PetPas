import 'package:flutter/material.dart';
import 'package:pet_track_app/view/profile_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple, fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: const UserProfileView(),
    );
  }
}
