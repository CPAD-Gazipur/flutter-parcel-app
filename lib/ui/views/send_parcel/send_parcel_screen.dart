import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/data/data.dart';
import 'package:flutter_parcel_app/models/models.dart';
import 'package:flutter_parcel_app/ui/views/details/parcel_details_screen.dart';
import 'package:flutter_parcel_app/ui/widgets/parcel_size_widget.dart';

class SendParcelScreen extends StatelessWidget {
  const SendParcelScreen({Key? key}) : super(key: key);

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
              'Send parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(height: 17),
            Text(
              'Parcel Size',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 11),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ParcelData.parcelList.length,
              itemBuilder: (context, index) {
                Parcel parcel = ParcelData.parcelList[index];
                return ParcelSizeWidget(
                  size: parcel.size,
                  image: parcel.image,
                  dimension: parcel.dimension,
                  description: parcel.description,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ParcelDetailsScreen(
                          parcel: parcel,
                        ),
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
