import 'package:flutter/material.dart';
import 'package:micromasr/core/app_spacing.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/features/driver/trip_history_card.dart';
import 'package:micromasr/features/driver/trips_filter_tabs.dart';
import 'package:micromasr/features/driver/trips_header.dart';
import 'package:micromasr/features/driver/trips_stats_row.dart';

class DriverTripsScreen extends StatefulWidget {
  const DriverTripsScreen({super.key});
  @override
  State<DriverTripsScreen> createState() => _DriverTripsScreenState();
}

class _DriverTripsScreenState extends State<DriverTripsScreen> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFFF2EFE8);
    const darkGreen = Color(0xFF4A7450);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          children: [
            TripsHeader(darkGreen: darkGreen),
            SizedBox(height: AppSpacing.md.ah),
            TripsStatsRow(darkGreen: darkGreen),
            SizedBox(height: AppSpacing.lg.ah),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.aw),
              child: TripsFilterTabs(selectedTab: _selectedTab, darkGreen: darkGreen, onTabSelected: (i) => setState(() => _selectedTab = i)),
            ),
            SizedBox(height: AppSpacing.lg.ah),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.aw),
                children: [
                  _DateHeader(darkGreen: darkGreen),
                  SizedBox(height: AppSpacing.md.ah),
                  ..._buildTripList(),
                  SizedBox(height: AppSpacing.xxl.ah),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTripList() {
    if (_selectedTab == 0) {
      return [
        const TripHistoryCard(time: 'Ù©:Ù¡Ù¥ Øµ', status: 'Ù…ÙƒØªÙ…Ù„Ø© âœ“', isCompleted: true, origin: 'Ù…Ø­Ø·Ø© Ù…ØµØ±', destination: 'Ø§Ù„Ø¬Ø§Ù…Ø¹Ø©', passengerName: 'Ù…Ø­Ù…Ø¯ Ø¬Ù„Ø§Ù„', rating: 'Ù¥â­ï¸', seats: 'Ù…Ù‚Ø¹Ø¯ Ù¤ØŒÙ£', price: 'Ù£Ù¢'),
        SizedBox(height: AppSpacing.md.ah),
        const TripHistoryCard(time: 'Ù¨:Ù£Ù  Øµ', status: 'Ù…ÙƒØªÙ…Ù„Ø© âœ“', isCompleted: true, origin: 'Ø³ÙŠØ¯ÙŠ Ø¬Ø§Ø¨Ø±', destination: 'Ù…Ø­Ø·Ø© Ù…ØµØ±', passengerName: 'Ø³Ø§Ø±Ø© Ø£Ø­Ù…Ø¯', rating: 'Ù¤.Ù¨â­ï¸', seats: 'Ù…Ù‚Ø¹Ø¯ Ù¡', price: 'Ù¡Ù¥'),
      ];
    }
    return [
      const TripHistoryCard(time: 'Ù§:Ù¤Ù¥ Øµ', status: 'Ù…Ù„ØºÙŠØ© âœ•', isCompleted: false, origin: 'Ø§Ù„Ù…Ù†Ø¯Ø±Ø©', destination: 'Ø³ÙŠØ¯ÙŠ Ø¨Ø´Ø±', passengerName: 'Ø¥Ù„ØºØ§Ø¡ Ø§Ù„Ø±Ø§ÙƒØ¨', rating: '', seats: '', price: 'Ù '),
    ];
  }
}

class _DateHeader extends StatelessWidget {
  final Color darkGreen;
  const _DateHeader({required this.darkGreen});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text('Ø§Ù„ÙŠÙˆÙ…ØŒ Ø§Ù„Ø³Ø¨Øª Ù¢Ù  Ø£Ø¨Ø±ÙŠÙ„', style: context.bodySmallTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.bold)),
    );
  }
}











