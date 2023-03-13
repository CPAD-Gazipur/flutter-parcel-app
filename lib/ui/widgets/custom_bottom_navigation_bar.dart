import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/utils/image_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const CustomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onItemTapped,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedItemColor: Colors.black,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: [
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? SvgPicture.asset(ImageUtils.icMyParcelSVG)
              : SvgPicture.asset(ImageUtils.icMyParcelGreySVG),
          label: 'My Parcel',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 1
              ? SvgPicture.asset(ImageUtils.icSendParcelSVG)
              : SvgPicture.asset(ImageUtils.icsSendParcelGreySVG),
          label: 'Send Parcel',
        ),
        BottomNavigationBarItem(
          icon: currentIndex == 2
              ? SvgPicture.asset(ImageUtils.icParcelCenterSVG)
              : SvgPicture.asset(ImageUtils.icParcelCenterGreySVG),
          label: 'Parcel Center',
        ),
      ],
    );
  }
}
