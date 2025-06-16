import 'package:flutter/material.dart';

class ParcelDeliveryMethod extends StatelessWidget {
  const ParcelDeliveryMethod({
    super.key,
    required this.image,
    required this.duration,
    required this.deliveryMethod,
    required this.initiallyExpanded,
    required this.onExpansionChanged,
  });

  final String deliveryMethod, duration, image;
  final bool initiallyExpanded;
  final Function(bool) onExpansionChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).colorScheme.surface,
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
            color: Theme.of(context).colorScheme.surface,
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
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      duration,
                      style: Theme.of(context).textTheme.headlineSmall,
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
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 10),
              Text(
                'Name',
                style: Theme.of(context).textTheme.titleLarge,
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
                style: Theme.of(context).textTheme.titleLarge,
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
                style: Theme.of(context).textTheme.titleLarge,
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
                style: Theme.of(context).textTheme.titleLarge,
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
