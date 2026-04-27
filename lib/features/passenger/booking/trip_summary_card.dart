import 'package:flutter/material.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/widgets/horizontal_space.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';

class TripSummaryCard extends StatelessWidget {
  const TripSummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(24), boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.tripDetails, style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
          const VerticalSpace(16),
          _buildTimeline(context),
          const VerticalSpace(20),
          const Divider(),
          const VerticalSpace(16),
          _buildDriverPreview(context),
          const VerticalSpace(16),
          _buildMapPreview(context),
        ],
      ),
    );
  }

  Widget _buildTimeline(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: context.colors.background, borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
          _buildStationRow(context, 'نقطة الانطلاق', 'محطة مصر', const Color(0xFF9CCC65), true),
          const VerticalSpace(8),
          _buildStationRow(context, 'الوجهة', 'الجامعة', const Color(0xFFF09063), false),
        ],
      ),
    );
  }

  Widget _buildStationRow(BuildContext context, String label, String value, Color color, bool isStart) {
    return Row(
      children: [
        Icon(isStart ? Icons.radio_button_checked : Icons.location_on, color: color, size: 20),
        const HorizontalSpace(16),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(label, style: context.labelSmallTextStyle.copyWith(color: context.colors.textSecondary)),
          Text(value, style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
        ]),
      ],
    );
  }

  Widget _buildDriverPreview(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(radius: 24, backgroundColor: context.colors.outline.withValues(alpha: 0.2), child: const Icon(Icons.person, color: Colors.white)),
        const HorizontalSpace(12),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('أحمد محمد', style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
          Row(children: [const Icon(Icons.star, color: Colors.orange, size: 14), const HorizontalSpace(4), Text('4.8', style: context.bodySmallTextStyle)]),
        ]),
      ],
    );
  }

  Widget _buildMapPreview(BuildContext context) {
    return Container(
      height: 120.ah,
      width: double.infinity,
      decoration: BoxDecoration(color: const Color(0xFFDCEDC8), borderRadius: BorderRadius.circular(16)),
      child: const Center(child: Icon(Icons.map_outlined, color: Colors.white, size: 40)),
    );
  }
}
