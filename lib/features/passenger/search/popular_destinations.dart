import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/horizontal_space.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';

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
              _buildChip(context, 'مطار القاهرة'),
              const HorizontalSpace(12),
              _buildChip(context, 'الجامعة'),
              const HorizontalSpace(12),
              _buildChip(context, 'محطة مصر'),
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
