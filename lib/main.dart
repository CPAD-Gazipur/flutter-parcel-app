import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/ui/views/views.dart';
import 'package:flutter_parcel_app/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ParcelAppTheme.init(context: context);
    return MaterialApp(
      title: 'Parcel App',
      debugShowCheckedModeBanner: false,
      theme: ParcelAppTheme.getLightTheme,
      home: const HomeScreen(),
    );
  }
}
