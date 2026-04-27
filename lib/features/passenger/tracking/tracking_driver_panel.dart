import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/horizontal_space.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';

class TrackingDriverPanel extends StatelessWidget {
  const TrackingDriverPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: const BorderRadius.vertical(top: Radius.circular(32)), boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.1), blurRadius: 20)]),
      child: Column(
        children: [
          _buildHandle(),
          const VerticalSpace(16),
          _buildDriverInfo(context),
          const VerticalSpace(20),
          _buildCostPreview(context),
          const VerticalSpace(20),
          _buildActions(context),
        ],
      ),
    );
  }

  Widget _buildHandle() {
    return Container(width: 40, height: 4, decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(2)));
  }

  Widget _buildDriverInfo(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(radius: 28, child: Icon(Icons.person)),
        const HorizontalSpace(16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('أحمد محمد', style: context.titleLargeTextStyle.copyWith(fontWeight: FontWeight.bold)),
            Text('ميكروباص أبيض - أ ب ج 123', style: context.bodyMediumTextStyle.copyWith(color: context.colors.textSecondary)),
          ],
        ),
        const Spacer(),
        _buildContactIcons(context),
      ],
    );
  }

  Widget _buildContactIcons(BuildContext context) {
    return Row(
      children: [
        _buildCircleIcon(context, Icons.phone_outlined, color: const Color(0xFF558B2F)),
        const HorizontalSpace(12),
        _buildCircleIcon(context, Icons.chat_bubble_outline),
      ],
    );
  }

  Widget _buildCircleIcon(BuildContext context, IconData icon, {Color? color}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(color: context.colors.background, shape: BoxShape.circle, border: Border.all(color: context.colors.outline.withValues(alpha: 0.5))),
      child: Icon(icon, color: color ?? context.colors.textSecondary, size: 24),
    );
  }

  Widget _buildCostPreview(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(color: const Color(0xFFF1F8E9), borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(AppStrings.tripCost, style: context.bodyMediumTextStyle.copyWith(color: context.colors.textSecondary)),
          Text('32 ${AppStrings.egp}', style: context.titleLargeTextStyle.copyWith(color: const Color(0xFFF09063), fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => context.push(AppRouteConstants.passengerReview),
            child: _buildActionBtn(context, AppStrings.shareTripRoute, Icons.share_outlined, context.colors.background, context.colors.textSecondary),
          ),
        ),
        const HorizontalSpace(12),
        Expanded(child: _buildActionBtn(context, AppStrings.sos, Icons.warning_amber, const Color(0xFFFFEBEE), const Color(0xFFE53935))),
      ],
    );
  }

  Widget _buildActionBtn(BuildContext context, String label, IconData icon, Color bg, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: bg, borderRadius: BorderRadius.circular(16), border: Border.all(color: context.colors.outline.withValues(alpha: 0.5))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color, size: 20),
          const HorizontalSpace(8),
          Text(label, style: context.bodyMediumTextStyle.copyWith(color: color, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
