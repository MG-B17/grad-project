import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import '../widgets/tracking_map_placeholder.dart';
import '../widgets/tracking_status_stepper.dart';
import '../widgets/tracking_driver_panel.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TrackingMapPlaceholder(),
          SafeArea(
            child: Column(
              children: [
                _buildHeader(context),
                const Spacer(),
                const TrackingStatusStepper(),
                const TrackingDriverPanel(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50), boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 10)]),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => context.pop(),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(color: context.colors.outline.withValues(alpha: 0.1), shape: BoxShape.circle),
              child: Icon(Icons.arrow_forward, color: context.colors.primary), // In RTL, this is the back button
            ),
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.driverOnWay, style: context.labelSmallTextStyle.copyWith(color: context.colors.textSecondary)),
              RichText(
                text: TextSpan(
                  style: context.titleLargeTextStyle.copyWith(fontWeight: FontWeight.bold, color: const Color(0xFFF09063)),
                  children: [
                    TextSpan(text: '${AppStrings.arrivesIn} 6 '),
                    TextSpan(text: AppStrings.minutesLabel, style: context.titleLargeTextStyle.copyWith(color: context.colors.textSecondary)),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
