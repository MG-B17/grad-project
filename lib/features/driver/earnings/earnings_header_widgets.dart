import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/features/driver/core/presentation/widgets/driver_shared_widgets.dart';

class EarningsHeader extends StatelessWidget {
  final Color darkGreen;
  const EarningsHeader({super.key, required this.darkGreen});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('الأرباح', style: context.titleLargeTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.w800)),
        Icon(Icons.menu_rounded, color: darkGreen),
      ],
    );
  }
}

class TimeFilterRow extends StatelessWidget {
  final Color darkGreen;
  const TimeFilterRow({super.key, required this.darkGreen});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DriverCard(
          padding: EdgeInsets.symmetric(horizontal: 12.aw, vertical: 6.ah),
          borderRadius: 16,
          child: Row(
            children: [
              Icon(Icons.arrow_drop_down_rounded, color: darkGreen),
              SizedBox(width: 4.aw),
              Text('هذا الأسبوع', style: context.bodyMediumTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
        Text('أرباحي', style: context.headlineMediumTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.w900)),
      ],
    );
  }
}
