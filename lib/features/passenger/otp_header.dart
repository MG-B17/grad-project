import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ØªØ£ÙƒÙŠØ¯ Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ',
          style: context.headlineLargeTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colors.primary,
          ),
        ),
        SizedBox(height: 8.ah),
        _buildSubtitle(context),
      ],
    );
  }

  Widget _buildSubtitle(BuildContext context) {
    return Row(
      children: [
        Text(
          'Ø¨Ø¹ØªÙ†Ø§Ù„Ùƒ ÙƒÙˆØ¯ Ø¹Ù„Ù‰ ',
          style: context.bodyLargeTextStyle.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        Text(
          '+20 100 123 4567',
          style: context.bodyLargeTextStyle.copyWith(
            color: context.colors.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.aw),
        Icon(Icons.edit_outlined, size: 18.aw, color: context.colors.textSecondary),
      ],
    );
  }
}











