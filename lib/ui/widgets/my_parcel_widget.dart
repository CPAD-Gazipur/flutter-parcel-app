import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/utils/utils.dart';
import 'package:flutter_svg/svg.dart';

class MyParcelWidget extends StatelessWidget {
  const MyParcelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Container(
        clipBehavior: Clip.antiAlias,
        height: 174,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Theme.of(context).backgroundColor,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              blurRadius: 10,
              spreadRadius: 0,
              offset: const Offset(0, 0),
            )
          ],
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00359007738060313786',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Container(
                  height: 31,
                  width: 78,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(ImageUtils.icAmazon),
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'In transit',
                  style: Theme.of(context).textTheme.headline3,
                ),
                const SizedBox(height: 3),
                Text(
                  'Last update: 3 hours ago',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 12),
                Container(
                  height: 5,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.5),
                  ),
                  child: LinearProgressIndicator(
                    value: 0.7,
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    backgroundColor: const Color(0xFFF8F8F8),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 60,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Details',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SvgPicture.asset(ImageUtils.icDetailsSVG),
                    ],
                  ),
                  Container(
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
