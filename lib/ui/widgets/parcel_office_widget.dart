import 'package:flutter/material.dart';

class ParcelOfficeWidget extends StatelessWidget {
  const ParcelOfficeWidget({
    super.key,
    required this.officeCode,
    required this.officeName,
    required this.officeAddress,
    required this.officeStats,
    required this.officeStatsNumber,
  });

  final String officeCode, officeName, officeAddress, officeStats;
  final double officeStatsNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      clipBehavior: Clip.antiAlias,
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).colorScheme.surface,
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
                officeCode,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              Text(
                'Available 24/7',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                officeName,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: 3),
              Text(
                officeAddress,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                officeStats,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 3),
              Container(
                height: 5,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2.5),
                ),
                child: LinearProgressIndicator(
                  value: officeStatsNumber,
                  color: Theme.of(context).appBarTheme.backgroundColor,
                  backgroundColor: const Color(0xFFF8F8F8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
