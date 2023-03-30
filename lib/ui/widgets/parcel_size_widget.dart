import 'package:flutter/material.dart';

class ParcelSizeWidget extends StatelessWidget {
  final bool isDone;
  final String size, dimension, description, image;
  final Function()? onTap;

  const ParcelSizeWidget({
    Key? key,
    required this.size,
    required this.description,
    required this.dimension,
    required this.image,
    this.isDone = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Hero(
        transitionOnUserGestures: true,
        tag: image,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 115,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 99,
                    width: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                  const SizedBox(width: 38),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        size,
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        dimension,
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 3),
                      Text(
                        description,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  )
                ],
              ),
            ),
            AnimatedOpacity(
              opacity: isDone ? 1 : 0,
              duration: const Duration(milliseconds: 800),
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
