import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/success_trip_card.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF558B2F), // Dark green background from image
      body: SafeArea(
        child: Column(
          children: [
            const VerticalSpace(60),
            _buildCheckmark(),
            const VerticalSpace(24),
            Text(AppStrings.paymentSuccessful, style: context.headlineLargeTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
            const VerticalSpace(8),
            _buildSuccessMessage(context),
            const VerticalSpace(12),
            Text('${AppStrings.bookingNumber} MM-0892', style: context.bodyMediumTextStyle.copyWith(color: Colors.white.withValues(alpha: 0.8))),
            const VerticalSpace(40),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 24), child: SuccessTripCard()),
            const Spacer(),
            _buildActions(context),
            const VerticalSpace(24),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckmark() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.2), shape: BoxShape.circle),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(color: Color(0xFF9CCC65), shape: BoxShape.circle),
        child: const Icon(Icons.check, color: Colors.white, size: 40),
      ),
    );
  }

  Widget _buildSuccessMessage(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: context.bodyLargeTextStyle.copyWith(color: Colors.white),
        children: [
          const TextSpan(text: 'حجزك اتأكد يا '),
          TextSpan(text: 'محمد', style: context.bodyLargeTextStyle.copyWith(color: const Color(0xFF9CCC65), fontWeight: FontWeight.bold)),
          const TextSpan(text: ' 🥳'),
        ],
      ),
    );
  }

  Widget _buildActions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          AppButton(
            label: AppStrings.trackTrip,
            onPressed: () => context.push(AppRouteConstants.passengerTracking),
          ),
          const VerticalSpace(12),
          AppButton.secondary(
            label: AppStrings.backToHome,
            onPressed: () => context.go(AppRouteConstants.passengerHome),
          ),
        ],
      ),
    );
  }
}
