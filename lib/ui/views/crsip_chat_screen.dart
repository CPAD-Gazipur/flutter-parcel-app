import 'package:crisp/crisp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_parcel_app/ui/views/details/parcel_details_screen.dart';

class CrispChatScreen extends StatefulWidget {
  const CrispChatScreen({Key? key}) : super(key: key);

  @override
  State<CrispChatScreen> createState() => _CrispChatScreenState();
}

class _CrispChatScreenState extends State<CrispChatScreen> {
  late CrispMain crispMain;

  @override
  void initState() {
    super.initState();

    crispMain = CrispMain(
      websiteId: 'a4685f43-8022-4142-b9cb-b786c6628a92',
      locale: 'en-us',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CrispView(
          crispMain: crispMain,
          clearCache: false,
          onLinkPressed: (url) {
            if (url.contains('ordertrack')) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ParcelDetailsScreen(),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
