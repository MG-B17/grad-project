import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/horizontal_space.dart';
import 'package:micromasr/core/vertical_space.dart';

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
                  Text('Ù…Ø³Ø§Ø± Ø§Ù„Ø±Ø­Ù„Ø©', style: context.labelSmallTextStyle.copyWith(color: context.colors.textSecondary)),
                  Text('Ø§Ù„ØªØ¬Ù…Ø¹ Ø§Ù„Ø®Ø§Ù…Ø³ â† Ø§Ù„ØªØ­Ø±ÙŠØ±', style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
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
                  Text('Ù…ÙˆØ¹Ø¯ Ø§Ù„Ø§Ù†Ø·Ù„Ø§Ù‚', style: context.labelSmallTextStyle.copyWith(color: context.colors.textSecondary)),
                  Text('Ø§Ù„ÙŠÙˆÙ…ØŒ 9:00 Øµ', style: context.titleMediumTextStyle.copyWith(color: const Color(0xFFF09063), fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}











