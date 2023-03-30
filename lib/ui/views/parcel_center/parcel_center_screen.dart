import 'package:flutter/material.dart';

class ParcelCenterScreen extends StatelessWidget {
  const ParcelCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        child: ListView(
          children: [
            Text(
              'Parcel center',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
