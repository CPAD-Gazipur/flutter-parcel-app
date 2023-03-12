import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/utils/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    CustomTheme.init(context: context);
    return MaterialApp(
      title: 'Parcel App',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.getCustomTheme(),
      home: const Scaffold(),
    );
  }
}
