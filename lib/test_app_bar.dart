import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TestAppBar extends StatefulWidget {
  const TestAppBar({Key? key}) : super(key: key);

  @override
  State<TestAppBar> createState() => _TestAppBarState();
}

class _TestAppBarState extends State<TestAppBar> {
  late ScrollController _scrollController;

  double _scrollControlOffset = 0.0;

  _scrollListener() {
    setState(() {
      _scrollControlOffset = _scrollController.offset;
    });
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF123456),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://i.pinimg.com/736x/4c/7a/b1/4c7ab1da89e96e9051005526164af8ed.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            SafeArea(
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                    (context, index) => Center(
                      child: Text(
                        index.toString(),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
            PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 20),
              child: FadeAppBar(
                scrollOffset: _scrollControlOffset,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FadeAppBar extends StatelessWidget {
  final double scrollOffset;
  const FadeAppBar({
    Key? key,
    required this.scrollOffset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 78,
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 10,
        ),
        color: Colors.white.withOpacity(
          (scrollOffset / 350).clamp(0, 1).toDouble(),
        ),
        child: SafeArea(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  blurRadius: 50,
                  spreadRadius: 0,
                  offset: const Offset(12, 265),
                )
              ],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 45,
                  child: Image.network(
                    'https://seeklogo.com/images/R/rokomari-logo-02A1B1094C-seeklogo.com.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: CupertinoSearchTextField(
                    enabled: false,
                    placeholder: 'Search by books, author...',
                    placeholderStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 4.0,
                    right: 10.0,
                  ),
                  child: Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.black.withOpacity(0.6),
                    size: 20,
                  ),
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black.withOpacity(0.6),
                  size: 18,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
