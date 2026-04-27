import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'trip_detail_header.dart';
import 'trip_detail_map.dart';
import 'driver_profile_card.dart';
import 'trip_timeline.dart';
import 'trip_booking_bar.dart';

class TripDetailScreen extends StatelessWidget {
  const TripDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          const TripDetailMap(),
          SafeArea(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.symmetric(horizontal: 20), child: TripDetailHeader()),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const DriverProfileCard(),
                      const VerticalSpace(16),
                      const TripTimeline(),
                      const VerticalSpace(100), 
                    ],
                  ),
                ),
              ],
            ),
          ),
          const TripBookingBar(),
        ],
      ),
    );
  }
}











