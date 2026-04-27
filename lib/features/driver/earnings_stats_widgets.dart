import 'package:flutter/material.dart';
import 'package:micromasr/core/app_spacing.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/features/driver/driver_shared_widgets.dart';

class TodayDetailsCard extends StatelessWidget {
  final dynamic earnings;
  final Color darkGreen;
  const TodayDetailsCard({super.key, required this.earnings, required this.darkGreen});

  @override
  Widget build(BuildContext context) {
    return DriverCard(
      child: Column(
        children: [
          const DriverSectionHeader(title: 'ØªÙØ§ØµÙŠÙ„ Ø§Ù„ÙŠÙˆÙ…'),
          SizedBox(height: AppSpacing.md.ah),
          _DetailPill(
            title: 'Ø¹Ø¯Ø¯ Ø§Ù„Ø±Ø­Ù„Ø§Øª', 
            value: '${earnings.todayTrips} Ø±Ø­Ù„Ø§Øª', 
            darkGreen: darkGreen,
          ),
          SizedBox(height: AppSpacing.sm.ah),
          _DetailPill(title: 'Ø£Ø¹Ù„Ù‰ Ø±Ø­Ù„Ø© Ø§Ù„ÙŠÙˆÙ…', value: 'Ù¤Ù¨ Ø¬Ù†ÙŠÙ‡', darkGreen: darkGreen),
        ],
      ),
    );
  }
}

class _DetailPill extends StatelessWidget {
  final String title, value;
  final Color darkGreen;
  const _DetailPill({required this.title, required this.value, required this.darkGreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.aw, vertical: AppSpacing.sm.ah),
      decoration: BoxDecoration(color: const Color(0xFFF2EFE8), borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: context.bodyMediumTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.w800)),
          Text(value, style: context.bodyMediumTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}

class TransactionsCard extends StatelessWidget {
  final List<dynamic> transactions;
  final Color darkGreen, orangeColor;
  const TransactionsCard({super.key, required this.transactions, required this.darkGreen, required this.orangeColor});

  @override
  Widget build(BuildContext context) {
    return DriverCard(
      child: Column(
        children: [
          const DriverSectionHeader(title: 'Ø¢Ø®Ø± Ø§Ù„Ù…Ø¹Ø§Ù…Ù„Ø§Øª'),
          SizedBox(height: AppSpacing.md.ah),
          ...transactions.map((tx) => _TransactionItem(tx: tx, darkGreen: darkGreen, orangeColor: orangeColor)),
        ],
      ),
    );
  }
}

class _TransactionItem extends StatelessWidget {
  final dynamic tx;
  final Color darkGreen, orangeColor;
  const _TransactionItem({required this.tx, required this.darkGreen, required this.orangeColor});

  @override
  Widget build(BuildContext context) {
    final isPositive = tx.type == 'Ø±Ø­Ù„Ø©';
    return Padding(
      padding: EdgeInsets.only(bottom: 12.ah),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '${isPositive ? '+' : '-'}${tx.amount.toInt()} Ø¬', 
            style: context.titleMediumTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    isPositive ? 'Ø±Ø­Ù„Ø© Ø±ÙƒØ§Ø¨' : 'Ø³Ø­Ø¨ Ø±ØµÙŠØ¯', 
                    style: context.bodyMediumTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    tx.date, 
                    style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary),
                  ),
                ],
              ),
              SizedBox(width: AppSpacing.md.aw),
              Container(
                padding: EdgeInsets.all(8.aw),
                decoration: BoxDecoration(
                  color: isPositive ? Colors.lightGreen.withValues(alpha: 0.2) : orangeColor.withValues(alpha: 0.1), 
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isPositive ? Icons.directions_bus_rounded : Icons.account_balance_wallet_rounded, 
                  color: isPositive ? darkGreen : orangeColor, 
                  size: 24.aw,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}












