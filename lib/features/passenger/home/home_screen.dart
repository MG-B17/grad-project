import 'package:flutter/material.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/home_header.dart';
import '../widgets/home_map.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/nearby_stations_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          HomeMap(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                   VerticalSpace(16),
                   HomeHeader(),
                   VerticalSpace(16),
                   HomeSearchBar(),
                ],
              ),
            ),
          ),
          NearbyStationsSheet(),
        ],
      ),
    );
  }
}

