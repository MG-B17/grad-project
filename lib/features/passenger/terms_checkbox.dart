import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final ValueChanged<bool?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
          activeColor: context.colors.primary,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.aw)),
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              text: 'Ø£ÙˆØ§ÙÙ‚ Ø¹Ù„Ù‰ ',
              style: context.bodyMediumTextStyle,
              children: [
                TextSpan(
                  text: 'Ø§Ù„Ø´Ø±ÙˆØ·',
                  style: context.bodyMediumTextStyle.copyWith(
                    color: context.colors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(text: ' Ùˆ '),
                TextSpan(
                  text: 'Ø³ÙŠØ§Ø³Ø© Ø§Ù„Ø®ØµÙˆØµÙŠØ©',
                  style: context.bodyMediumTextStyle.copyWith(
                    color: context.colors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}











