import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/models/models.dart';
import 'package:flutter_parcel_app/ui/widgets/widgets.dart';

class ParcelDetailsScreen extends StatelessWidget {
  final Parcel parcel;

  const ParcelDetailsScreen({
    Key? key,
    required this.parcel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: ListView(
            children: [
              Text(
                'Send parcel',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 17),
              Text(
                'Parcel Size',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 11),
              ParcelWidget(
                size: parcel.size,
                image: parcel.image,
                dimension: parcel.dimension,
                description: parcel.description,
              )
            ],
          ),
        ),
      ),
    );
  }
}
