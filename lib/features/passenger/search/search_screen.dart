import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/search_header.dart';
import '../widgets/location_input_card.dart';
import '../widgets/saved_places.dart';
import '../widgets/recent_locations.dart';
import '../widgets/popular_destinations.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchHeader(),
              VerticalSpace(24),
              LocationInputCard(),
              VerticalSpace(32),
              SavedPlaces(),
              VerticalSpace(32),
              RecentLocations(),
              VerticalSpace(32),
              PopularDestinations(),
            ],
          ),
        ),
      ),
    );
  }
}
