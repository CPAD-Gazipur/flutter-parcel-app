import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/models/models.dart';
import 'package:flutter_parcel_app/ui/widgets/widgets.dart';

class ParcelCheckboxScreen extends StatelessWidget {
  final Parcel parcel;
  final DeliveryMethod deliveryMethod;
  const ParcelCheckboxScreen({
    Key? key,
    required this.parcel,
    required this.deliveryMethod,
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
                'Checkout',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 17),
              Text(
                'Parcel size',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 11),
              ParcelWidget(
                isDone: true,
                size: parcel.size,
                image: parcel.image,
                dimension: parcel.dimension,
                description: parcel.description,
              ),
              const SizedBox(height: 5),
              Text(
                'Delivery method',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(height: 11),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.only(
                      bottom: 16,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Theme.of(context).backgroundColor,
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor,
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        )
                      ],
                    ),
                    child: Hero(
                      tag: deliveryMethod.image,
                      transitionOnUserGestures: true,
                      child: Container(
                        height: 102,
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(deliveryMethod.image),
                                ),
                              ),
                            ),
                            const SizedBox(width: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  deliveryMethod.deliveryMethod,
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Text(
                                  deliveryMethod.duration,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    clipBehavior: Clip.antiAlias,
                    padding: const EdgeInsets.only(
                      left: 6,
                      bottom: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        topRight: Radius.circular(4),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).shadowColor,
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: const Offset(0, 0),
                        )
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
