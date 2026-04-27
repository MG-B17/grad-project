import 'package:flutter/material.dart';
import 'package:micromasr/core/app_strings.dart';
import 'package:micromasr/core/context_extensions.dart';

class FeedbackTags extends StatefulWidget {
  const FeedbackTags({super.key});

  @override
  State<FeedbackTags> createState() => _FeedbackTagsState();
}

class _FeedbackTagsState extends State<FeedbackTags> {
  final List<String> _selectedTags = [];

  final List<String> _tags = [
    AppStrings.safeDriving,
    AppStrings.onTime,
    AppStrings.cleanCar,
    AppStrings.politeDriver,
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      alignment: WrapAlignment.center,
      children: _tags.map((tag) => _buildTag(tag)).toList(),
    );
  }

  Widget _buildTag(String tag) {
    final isSelected = _selectedTags.contains(tag);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            _selectedTags.remove(tag);
          } else {
            _selectedTags.add(tag);
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFF1F8E9) : context.colors.background,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color:
                isSelected
                    ? const Color(0xFF9CCC65)
                    : context.colors.outline.withValues(alpha: 0.5),
          ),
        ),
        child: Text(
          tag,
          style: context.bodySmallTextStyle.copyWith(
            color: isSelected ? const Color(0xFF558B2F) : context.colors.textSecondary,
            fontWeight: isSelected ? FontWeight.bold : null,
          ),
        ),
      ),
    );
  }
}











