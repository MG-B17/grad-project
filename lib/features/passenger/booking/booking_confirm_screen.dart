import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/trip_summary_card.dart';
import '../widgets/price_breakdown_card.dart';
import '../widgets/booking_confirm_header.dart';

class BookingConfirmScreen extends StatelessWidget {
  const BookingConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0), // Off-white background from image
      body: SafeArea(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), child: BookingConfirmHeader()),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const VerticalSpace(16),
                    const TripSummaryCard(),
                    const VerticalSpace(20),
                    const PriceBreakdownCard(),
                    const VerticalSpace(32),
                  ],
                ),
              ),
            ),
            _buildBottomActions(context),
          ],
        ),
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
            label: AppStrings.confirmAndPay,
            onPressed: () => context.push(AppRouteConstants.passengerPayment),
          ),
          const VerticalSpace(12),
          AppButton.text(
            label: AppStrings.cancel,
            onPressed: () => context.pop(),
          ),
        ],
      ),
    );
  }
}
