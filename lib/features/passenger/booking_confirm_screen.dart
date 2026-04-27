import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/app_strings.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/app_button.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'trip_summary_card.dart';
import 'price_breakdown_card.dart';
import 'booking_confirm_header.dart';

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











