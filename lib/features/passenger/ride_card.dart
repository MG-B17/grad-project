import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/app_strings.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/horizontal_space.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'ride_card_header.dart';
import 'station_tag.dart';

class RideCard extends StatelessWidget {
  const RideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRouteConstants.passengerTripDetail),
      child: Container(
        padding: EdgeInsets.all(16.aw),
        decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(24), boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 5))]),
        child: Column(
          children: [
            const RideCardHeader(price: 15, driverName: 'أحمد محمد', completedTrips: 320, avatarInitial: 'أ'),
            const VerticalSpace(16),
            _buildRouteTimeline(context),
            const VerticalSpace(16),
            const Divider(),
            const VerticalSpace(12),
            _buildFooter(context),
          ],
        ),
      ),
    );
  }

  Widget _buildRouteTimeline(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.aw),
      decoration: BoxDecoration(color: context.colors.background, borderRadius: BorderRadius.circular(100)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const StationTag(label: 'محطة مصر', isSelected: true),
          Icon(Icons.arrow_back, size: 16, color: context.colors.textSecondary),
          const StationTag(label: 'وسط البلد', isSelected: false),
          Icon(Icons.arrow_back, size: 16, color: context.colors.textSecondary),
          const StationTag(label: 'الجامعة', isSelected: false),
        ],
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildCodePill(context, '123NQR'),
        Row(
          children: [
            Text('${AppStrings.arrivingIn} 8 ${AppStrings.minutesSuffix}', style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary)),
            const HorizontalSpace(12),
            Text('4 ${AppStrings.seatsAvailableCount}', style: context.bodySmallTextStyle.copyWith(color: const Color(0xFF9CCC65), fontWeight: FontWeight.bold)),
            const HorizontalSpace(4),
            const Icon(Icons.star, size: 16, color: Colors.amber),
            Text('4.8', style: context.labelSmallTextStyle.copyWith(fontWeight: FontWeight.bold)),
          ],
        ),
      ],
    );
  }

  Widget _buildCodePill(BuildContext context, String code) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(color: context.colors.outline.withValues(alpha: 0.5), borderRadius: BorderRadius.circular(8)),
      child: Text(code, style: context.labelSmallTextStyle.copyWith(color: context.colors.onSurface)),
    );
  }
}











