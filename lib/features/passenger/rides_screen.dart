import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'rides_header.dart';
import 'rides_filter.dart';
import 'ride_card.dart';

class RidesScreen extends StatelessWidget {
  const RidesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.all(20), child: RidesHeader()),
            const RidesFilter(),
            const VerticalSpace(12),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                itemBuilder: (context, index) => const RideCard(),
                separatorBuilder: (context, index) => const VerticalSpace(16),
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}











