import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/data/data.dart';
import 'package:flutter_parcel_app/models/models.dart';
import 'package:flutter_parcel_app/ui/views/views.dart';
import 'package:flutter_parcel_app/ui/widgets/widgets.dart';

class ParcelDetailsScreen extends StatelessWidget {
  const ParcelDetailsScreen({super.key, required this.parcel});

  final Parcel parcel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            Text(
              'Send parcel',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 17),
            Text(
              'Parcel size',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 11),
            ParcelSizeWidget(
              isDone: true,
              size: parcel.size,
              image: parcel.image,
              dimension: parcel.dimension,
              description: parcel.description,
            ),
            const SizedBox(height: 5),
            Text(
              'Delivery method',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 11),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: DeliveryData.deliveryMethods.length,
              itemBuilder: (context, index) {
                DeliveryMethod deliverMethod =
                    DeliveryData.deliveryMethods[index];
                return ParcelDeliveryMethod(
                  initiallyExpanded: false,
                  onExpansionChanged: (value) {
                    debugPrint('-----$index: $value');
                  },
                  image: deliverMethod.image,
                  duration: deliverMethod.duration,
                  deliveryMethod: deliverMethod.deliveryMethod,
                );
              },
            ),
            const SizedBox(height: 11),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: TextButton(
                style: Theme.of(context).textButtonTheme.style,
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ParcelCheckboxScreen(
                        parcel: parcel,
                        deliveryMethod: DeliveryData.deliveryMethods[0],
                      ),
                    ),
                  );
                },
                child: Text(
                  'Checkout',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
            const SizedBox(height: 11),
          ],
        ),
      ),
    );
  }
}
