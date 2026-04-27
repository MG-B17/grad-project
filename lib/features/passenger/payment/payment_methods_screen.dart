import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/payment_method_item.dart';
import '../widgets/payment_methods_header.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  String _selectedMethod = 'card';
  bool _isLoading = false;

  Future<void> _handlePayment() async {
    setState(() {
      _isLoading = true;
    });

    // Simulate API call
    await Future.delayed(const Duration(seconds: 2));

    if (mounted) {
      setState(() {
        _isLoading = false;
      });
      context.push(AppRouteConstants.passengerPaymentSuccess);
    }
  }

  @override
  Widget build(BuildContext context) {
    const int totalPrice = 34; // Dummy total

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: PaymentMethodsHeader(),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const VerticalSpace(24),
                    _buildAmountCard(context, totalPrice),
                    const VerticalSpace(32),
                    _buildMethodsList(context),
                  ],
                ),
              ),
            ),
            _buildBottomAction(context, totalPrice),
          ],
        ),
      ),
    );
  }

  Widget _buildAmountCard(BuildContext context, int total) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
          )
        ],
      ),
      child: Column(
        children: [
          Text(
            AppStrings.totalAmountLabel,
            style: context.bodyLargeTextStyle.copyWith(color: context.colors.textSecondary),
          ),
          const VerticalSpace(8),
          Text(
            '$total ${AppStrings.egp}',
            style: context.headlineLargeTextStyle.copyWith(
              color: const Color(0xFFF09063),
              fontWeight: FontWeight.bold,
              fontSize: 40,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMethodsList(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentMethodLabel,
          style: context.titleMediumTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2E7D32),
          ),
        ),
        const VerticalSpace(16),
        PaymentMethodItem(
          label: AppStrings.creditCard,
          subtitle: 'Visa, Mastercard',
          icon: Icons.credit_card,
          isSelected: _selectedMethod == 'card',
          onTap: () => setState(() => _selectedMethod = 'card'),
        ),
        const VerticalSpace(12),
        PaymentMethodItem(
          label: AppStrings.fawry,
          icon: Icons.receipt_long,
          isSelected: _selectedMethod == 'fawry',
          onTap: () => setState(() => _selectedMethod = 'fawry'),
        ),
        const VerticalSpace(12),
        PaymentMethodItem(
          label: AppStrings.vodafoneCash,
          icon: Icons.phone_android,
          isSelected: _selectedMethod == 'vodafoneCash',
          onTap: () => setState(() => _selectedMethod = 'vodafoneCash'),
        ),
        const VerticalSpace(12),
        PaymentMethodItem(
          label: AppStrings.cashOnPickup,
          icon: Icons.payments,
          isSelected: _selectedMethod == 'cash',
          onTap: () => setState(() => _selectedMethod = 'cash'),
        ),
      ],
    );
  }

  Widget _buildBottomAction(BuildContext context, int total) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: AppButton(
        label: '${AppStrings.payAmount} $total ${AppStrings.egp}',
        isLoading: _isLoading,
        onPressed: _handlePayment,
      ),
    );
  }
}

