import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/app_strings.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/horizontal_space.dart';
import 'package:micromasr/core/vertical_space.dart';

class PopularDestinations extends StatelessWidget {
  const PopularDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(width: 4.aw, height: 20.ah, color: context.colors.primary),
            const HorizontalSpace(8),
            Text(
              AppStrings.popularDestinationsTitle,
              style: context.headlineMediumTextStyle.copyWith(color: context.colors.primary, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const VerticalSpace(16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildChip(context, 'Ù…Ø·Ø§Ø± Ø§Ù„Ù‚Ø§Ù‡Ø±Ø©'),
              const HorizontalSpace(12),
              _buildChip(context, 'Ø§Ù„Ø¬Ø§Ù…Ø¹Ø©'),
              const HorizontalSpace(12),
              _buildChip(context, 'Ù…Ø­Ø·Ø© Ù…ØµØ±'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildChip(BuildContext context, String label) {
    return GestureDetector(
      onTap: () => context.push(AppRouteConstants.passengerRides),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.aw, vertical: 8.ah),
        decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(100), border: Border.all(color: context.colors.outline.withValues(alpha: 0.5))),
        child: Text(label, style: context.bodyMediumTextStyle.copyWith(color: context.colors.onSurface)),
      ),
    );
  }
}











