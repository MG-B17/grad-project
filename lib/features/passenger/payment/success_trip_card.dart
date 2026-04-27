import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/widgets/horizontal_space.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';

class SuccessTripCard extends StatelessWidget {
  const SuccessTripCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(24)),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.directions_bus, color: Color(0xFF9CCC65)),
              const HorizontalSpace(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('مسار الرحلة', style: context.labelSmallTextStyle.copyWith(color: context.colors.textSecondary)),
                  Text('التجمع الخامس ← التحرير', style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
          const VerticalSpace(16),
          const Divider(),
          const VerticalSpace(16),
          Row(
            children: [
              const CircleAvatar(radius: 20, child: Icon(Icons.person)),
              const HorizontalSpace(16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('موعد الانطلاق', style: context.labelSmallTextStyle.copyWith(color: context.colors.textSecondary)),
                  Text('اليوم، 9:00 ص', style: context.titleMediumTextStyle.copyWith(color: const Color(0xFFF09063), fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
