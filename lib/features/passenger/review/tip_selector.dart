import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';

class TipSelector extends StatefulWidget {
  const TipSelector({super.key});

  @override
  State<TipSelector> createState() => _TipSelectorState();
}

class _TipSelectorState extends State<TipSelector> {
  int? _selectedTip;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTipBtn(2, '+2 جنية'),
        _buildTipBtn(5, '+5 جنية'),
        _buildTipBtn(null, 'مبلغ آخر'),
      ],
    );
  }

  Widget _buildTipBtn(int? value, String label) {
    final isSelected = _selectedTip == value;
    return GestureDetector(
      onTap: () => setState(() => _selectedTip = value),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF1F8E9) : context.colors.background,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: isSelected ? const Color(0xFF9CCC65) : context.colors.outline.withValues(alpha: 0.5)),
        ),
        child: Text(
          label,
          style: context.bodyMediumTextStyle.copyWith(
            color: isSelected ? const Color(0xFF558B2F) : context.colors.textSecondary,
            fontWeight: isSelected ? FontWeight.bold : null,
          ),
        ),
      ),
    );
  }
}
