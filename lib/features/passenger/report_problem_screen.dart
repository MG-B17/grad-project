import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/app_card.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'package:micromasr/core/app_button.dart';
import 'package:micromasr/core/app_text_field.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';

class ReportProblemScreen extends StatefulWidget {
  const ReportProblemScreen({super.key});

  @override
  State<ReportProblemScreen> createState() => _ReportProblemScreenState();
}

class _ReportProblemScreenState extends State<ReportProblemScreen> {
  String? selectedProblemType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† Ù…Ø´ÙƒÙ„Ø©'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            // Problem Type Dropdown
            _buildDropdown(context),
            const VerticalSpace(24),
            
            // Description Field
            const AppTextField(
              label: 'ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù…Ø´ÙƒÙ„Ø©',
              hintText: 'Ø§Ø´Ø±Ø­ Ø§Ù„Ù…Ø´ÙƒÙ„Ø© Ø¨Ø§Ù„ØªÙØµÙŠÙ„ Ù„Ù…Ø³Ø§Ø¹Ø¯ØªÙ†Ø§ ÙÙŠ Ø­Ù„Ù‡Ø§...',
              maxLines: 5,
            ),
            const VerticalSpace(24),
            
            // Upload Image Section
            _buildImageUpload(context),
            const VerticalSpace(40),
            
            AppButton(
              label: 'Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¨Ù„Ø§Øº',
              onPressed: () => context.go(AppRouteConstants.passengerProfile),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDropdown(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.symmetric(horizontal: 16.aw),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedProblemType,
          hint: Text(
            'Ø§Ø®ØªØ± Ù†ÙˆØ¹ Ø§Ù„Ù…Ø´ÙƒÙ„Ø©',
            style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary),
          ),
          isExpanded: true,
          icon: Icon(Icons.keyboard_arrow_down_rounded, color: context.colors.primary),
          items: ['ØªØ·Ø¨ÙŠÙ‚ Ø§Ù„Ù‡Ø§ØªÙ', 'Ø§Ù„Ø³Ø§Ø¦Ù‚', 'Ø§Ù„Ø±Ø­Ù„Ø©', 'Ø§Ù„Ø¯ÙØ¹'].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value, style: context.bodyMediumTextStyle),
            );
          }).toList(),
          onChanged: (val) => setState(() => selectedProblemType = val),
        ),
      ),
    );
  }

  Widget _buildImageUpload(BuildContext context) {
    return AppCard(
      padding: EdgeInsets.all(20.aw),
      child: Column(
        children: [
          Icon(Icons.cloud_upload_outlined, size: 48.aw, color: context.colors.primary.withValues(alpha: 0.5)),
          const VerticalSpace(12),
          Text(
            'Ø¥Ø±ÙØ§Ù‚ ØµÙˆØ±Ø© (Ø§Ø®ØªÙŠØ§Ø±ÙŠ)',
            style: context.bodyMediumTextStyle.copyWith(color: context.colors.textSecondary),
          ),
          const VerticalSpace(8),
          Text(
            'ÙŠÙ…ÙƒÙ†Ùƒ ØªØ­Ù…ÙŠÙ„ ØµÙˆØ± Ø¨Ø­Ø¯ Ø£Ù‚ØµÙ‰ Ù¥ Ù…ÙŠØ¬Ø§Ø¨Ø§ÙŠØª',
            style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary.withValues(alpha: 0.5)),
          ),
        ],
      ),
    );
  }
}











