import 'package:flutter/material.dart';

class ParcelDeliveryMethod extends StatelessWidget {
  final String deliveryMethod, duration, image;

  final bool initiallyExpanded;

  final Function(bool) onExpansionChanged;

  const ParcelDeliveryMethod({
    Key? key,
    required this.image,
    required this.duration,
    required this.deliveryMethod,
    required this.initiallyExpanded,
    required this.onExpansionChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ExpansionTile(
        initiallyExpanded: initiallyExpanded,
        onExpansionChanged: onExpansionChanged,
        tilePadding: EdgeInsets.zero,
        trailing: const SizedBox.shrink(),
        title: Hero(
          tag: image,
          transitionOnUserGestures: true,
          child: Container(
            height: 102,
            color: Theme.of(context).backgroundColor,
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      deliveryMethod,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      duration,
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 1,
            color: Colors.grey.shade300,
          ),
          _buildExpansionChildren(context),
        ],
      ),
    );
  }

  Widget _buildExpansionChildren(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16).copyWith(
        top: 0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          Text(
            'Recipient Info',
            style: Theme.of(context).textTheme.headline5,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'Name',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'Email',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'Phone number',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'Address',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          TextField(
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}
