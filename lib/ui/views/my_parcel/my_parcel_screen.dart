import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/ui/widgets/widgets.dart';
import 'package:flutter_parcel_app/utils/utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyParcelScreen extends StatelessWidget {
  const MyParcelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              'Track Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          centerTitle: false,
          floating: true,
          snap: false,
          pinned: true,
          titleSpacing: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.network(ImageUtils.icProfile),
                ),
              ),
            ),
          ],
          shadowColor: Colors.transparent,
          expandedHeight: 316,
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 40,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter parcel number or scan QR code',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 7,
                            bottom: 40,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 49,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                  ),
                                  child: const TextField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'tracking number',
                                      focusedBorder: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Container(
                                height: 49,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                padding: const EdgeInsets.all(12),
                                child: SvgPicture.asset(
                                  ImageUtils.icQRCodeSVG,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: TextButton(
                            style: Theme.of(context).textButtonTheme.style,
                            onPressed: () {},
                            child: Text(
                              'Track Parcel',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SliverPadding(
          padding: EdgeInsets.only(top: 32),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Parcels',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, index) {
              return const MyParcelWidget();
            },
          ),
        )
      ],
    );
  }
}
