import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/review_header.dart';
import '../widgets/review_driver_card.dart';
import '../widgets/tip_selector.dart';

class TripReviewScreen extends StatelessWidget {
  const TripReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      body: Column(
        children: [
          const ReviewHeader(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const ReviewDriverCard(),
                  const VerticalSpace(20),
                  _buildTipCard(context),
                ],
              ),
            ),
          ),
          _buildBottomActions(context),
        ],
      ),
    );
  }

  Widget _buildTipCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(24), boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10)]),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.payments, color: Color(0xFFF09063)),
              const SizedBox(width: 8),
              Text(AppStrings.addTipOptional, style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
          const VerticalSpace(16),
          const TipSelector(),
        ],
      ),
    );
  }

  Widget _buildBottomActions(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: const BorderRadius.vertical(top: Radius.circular(32))),
      child: Column(
        children: [
          AppButton(
            label: AppStrings.sendReview,
            onPressed: () => context.go(AppRouteConstants.passengerHome),
          ),
          const VerticalSpace(12),
          AppButton.text(
            label: AppStrings.skip,
            onPressed: () => context.go(AppRouteConstants.passengerHome),
          ),
        ],
      ),
    );
  }
}
