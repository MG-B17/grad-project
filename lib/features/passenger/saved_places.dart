import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/app_strings.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/horizontal_space.dart';
import 'package:micromasr/core/vertical_space.dart';

class SavedPlaces extends StatelessWidget {
  const SavedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(width: 4.aw, height: 20.ah, color: context.colors.primary),
            const HorizontalSpace(8),
            Text(AppStrings.savedPlacesTitle, style: context.headlineMediumTextStyle.copyWith(color: context.colors.primary, fontWeight: FontWeight.bold)),
          ],
        ),
        const VerticalSpace(16),
        Row(
          children: [
            _buildPlaceCard(context, AppStrings.homePlace, Icons.home),
            const HorizontalSpace(16),
            _buildPlaceCard(context, AppStrings.workPlace, Icons.business_center),
          ],
        ),
      ],
    );
  }

  Widget _buildPlaceCard(BuildContext context, String label, IconData icon) {
    return Expanded(
      child: GestureDetector(
        onTap: () => context.push(AppRouteConstants.passengerRides),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20.ah),
          decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(20), boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10, offset: const Offset(0, 5))]),
          child: Column(
            children: [
              Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: context.colors.background, shape: BoxShape.circle), child: Icon(icon, color: const Color(0xFFF09063))),
              const VerticalSpace(12),
              Text(label, style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}











