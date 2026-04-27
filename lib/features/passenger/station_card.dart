import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/horizontal_space.dart';

class StationCard extends StatelessWidget {
  const StationCard({
    super.key,
    required this.name,
    required this.distance,
    required this.availableCount,
    required this.code,
  });

  final String name;
  final String distance;
  final int availableCount;
  final String code;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push(AppRouteConstants.passengerSearch),
      child: Container(
        width: 200.aw,
        padding: EdgeInsets.all(12.aw),
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: context.colors.outline.withValues(alpha: 0.5)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: context.titleLargeTextStyle.copyWith(fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(color: const Color(0xFF9CCC65), borderRadius: BorderRadius.circular(10)),
                  child: Text(code, style: context.labelSmallTextStyle.copyWith(color: Colors.white)),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.directions_bus, size: 14, color: context.colors.primary),
                    const HorizontalSpace(4),
                    Text('$availableCount Ù…ÙŠÙƒØ±ÙˆØ¨Ø§Øµ Ù…ØªØ§Ø­', style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary)),
                  ],
                ),
                Text(distance, style: context.bodyMediumTextStyle.copyWith(color: const Color(0xFFF09063))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}











