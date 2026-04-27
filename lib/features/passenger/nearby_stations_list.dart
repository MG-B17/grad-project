import 'package:flutter/material.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/horizontal_space.dart';
import 'station_card.dart';

class NearbyStationsList extends StatelessWidget {
  const NearbyStationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.ah,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (c, i) => StationCard(
          name: i == 0 ? 'Ù…Ø­Ø·Ø© Ø§Ù„Ø¬Ø§Ù…Ø¹Ø©' : 'Ù…ÙŠØ¯Ø§Ù† Ø§Ù„ØªØ­Ø±ÙŠØ±',
          distance: '250Ù…',
          availableCount: 3,
          code: '#123',
        ),
        separatorBuilder: (c, i) => const HorizontalSpace(16),
        itemCount: 5,
      ),
    );
  }
}











