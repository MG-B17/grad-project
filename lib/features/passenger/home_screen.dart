import 'package:flutter/material.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'home_header.dart';
import 'home_map.dart';
import 'home_search_bar.dart';
import 'nearby_stations_sheet.dart';

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












