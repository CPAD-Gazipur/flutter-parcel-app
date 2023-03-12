import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/utils/image_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      selectedItemColor: Colors.black,
      unselectedItemColor: Theme.of(context).unselectedWidgetColor,
      selectedLabelStyle: Theme.of(context).textTheme.headline5,
      unselectedLabelStyle: Theme.of(context).textTheme.headline5,
      items: [
        BottomNavigationBarItem(
          icon: _currentIndex == 0
              ? SvgPicture.asset(ImageUtils.icMyParcel)
              : SvgPicture.asset(ImageUtils.icMyParcelGrey),
          label: 'My Parcel',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 1
              ? SvgPicture.asset(ImageUtils.icSendParcel)
              : SvgPicture.asset(ImageUtils.icsSendParcelGrey),
          label: 'Send Parcel',
        ),
        BottomNavigationBarItem(
          icon: _currentIndex == 2
              ? SvgPicture.asset(ImageUtils.icParcelCenter)
              : SvgPicture.asset(ImageUtils.icParcelCenterGrey),
          label: 'Parcel Center',
        ),
      ],
    );
  }
}
