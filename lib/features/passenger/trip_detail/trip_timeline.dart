import 'package:flutter/material.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/widgets/horizontal_space.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';

class TripTimeline extends StatelessWidget {
  const TripTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.aw),
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(32)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(width: 4.aw, height: 16.ah, color: context.colors.primary),
              const HorizontalSpace(8),
              Text(AppStrings.tripStations, style: context.bodyLargeTextStyle.copyWith(fontWeight: FontWeight.bold)),
            ],
          ),
          const VerticalSpace(20),
          _buildTimelineItem(context, 'محطة مصر', 'الآن', const Color(0xFF558B2F), true, true),
          _buildTimelineItem(context, 'وسط البلد', '+3 ${AppStrings.minutesSuffix}', const Color(0xFF9CCC65), true, false),
          _buildTimelineItem(context, 'الجامعة', '+12 دقيقة', const Color(0xFFF09063), false, false),
        ],
      ),
    );
  }

  Widget _buildTimelineItem(BuildContext context, String name, String time, Color color, bool showLine, bool isFirst) {
    return SizedBox(
      height: 60.ah,
      child: Row(
        children: [
          Column(
            children: [
              Container(width: 16.aw, height: 16.aw, decoration: BoxDecoration(color: color, shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 3), boxShadow: [BoxShadow(color: color.withValues(alpha: 0.3), blurRadius: 5)])),
              if (showLine) Expanded(child: Container(width: 2.aw, color: context.colors.outline.withValues(alpha: 0.5))),
            ],
          ),
          const HorizontalSpace(16),
          Text(name, style: context.bodyLargeTextStyle.copyWith(fontWeight: FontWeight.bold, color: context.colors.onSurface)),
          const Spacer(),
          Text(time, style: context.bodyMediumTextStyle.copyWith(color: color, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
