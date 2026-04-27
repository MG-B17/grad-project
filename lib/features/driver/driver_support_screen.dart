import 'package:flutter/material.dart';
import 'package:micromasr/core/app_spacing.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/features/driver/support_contact_widgets.dart';
import 'package:micromasr/features/driver/support_faq_widgets.dart';
import 'package:micromasr/features/driver/support_header_widgets.dart';

class DriverSupportScreen extends StatefulWidget {
  const DriverSupportScreen({super.key});
  @override
  State<DriverSupportScreen> createState() => _DriverSupportScreenState();
}

class _DriverSupportScreenState extends State<DriverSupportScreen> {
  int _expandedIndex = 0;

  @override
  Widget build(BuildContext context) {
    const darkGreen = Color(0xFF4A7450);
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.aw, vertical: AppSpacing.md.ah),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            SupportSearchHeader(darkGreen: darkGreen),
            SizedBox(height: AppSpacing.lg.ah),
            const SupportFilterChips(),
            SizedBox(height: AppSpacing.xl.ah),
            _buildFaqList(darkGreen),
            SizedBox(height: AppSpacing.xl.ah),
            Text('ØªÙˆØ§ØµÙ„ Ù…Ø¨Ø§Ø´Ø±', textAlign: TextAlign.right, style: context.titleMediumTextStyle.copyWith(color: darkGreen, fontWeight: FontWeight.bold)),
            SizedBox(height: AppSpacing.md.ah),
            ContactCard(title: 'Ø§Ù„Ø¯Ø¹Ù… Ø§Ù„ÙÙ†ÙŠ Ø§Ù„Ù…Ø¨Ø§Ø´Ø±', subtitle: 'Ù…ØªØ§Ø­ Ù¢Ù¤ Ø³Ø§Ø¹Ø©', icon: Icons.chat_bubble_outline, iconColor: const Color(0xFFE28B5A), iconBgColor: const Color(0xFFE28B5A).withValues(alpha: 0.1), darkGreen: darkGreen),
            SizedBox(height: AppSpacing.md.ah),
            ContactCard(title: 'Ù…ÙƒØªØ¨ Ø§Ù„Ø¯Ø¹Ù… Ø§Ù„Ù…ÙŠØ¯Ø§Ù†ÙŠ', subtitle: 'Ø§Ù„ÙØ±Ø¹ Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠ - Ø§Ù„Ù…Ù†ØµÙˆØ±Ø©', icon: Icons.location_on_outlined, iconColor: darkGreen, iconBgColor: darkGreen.withValues(alpha: 0.1), darkGreen: darkGreen),
            SizedBox(height: 32.ah),
            const NewTicketButton(),
            SizedBox(height: AppSpacing.xl.ah),
          ]),
        ),
      ),
    );
  }

  Widget _buildFaqList(Color darkGreen) {
    return Column(children: [
      FaqItem(index: 0, expandedIndex: _expandedIndex, title: 'Ø¥Ø²Ø§ÙŠ Ø£Ø³Ø­Ø¨ Ø£Ø±Ø¨Ø§Ø­ÙŠ Ù„Ù…Ø­ÙØ¸ØªÙŠØŸ', content: 'ØªØ±ÙˆØ­ Ø¹Ù„Ù‰ ØªØ¨ÙˆÙŠØ¨ Ø§Ù„Ø£Ø±Ø¨Ø§Ø­ØŒ ÙˆÙ†Ø¶ØºØ· Ø³Ø­Ø¨ Ø§Ù„Ø£Ø±Ø¨Ø§Ø­ØŒ Ø§Ù„Ù…Ø¨Ù„Øº Ø¨ÙŠÙˆØµÙ„ Ø®Ù„Ø§Ù„ Ù¢Ù¤ Ø³Ø§Ø¹Ø© Ø¹Ù…Ù„ Ø¹Ù„Ù‰ Ø§Ù„Ù…Ø­ÙØ¸Ø© Ø§Ù„Ù…Ø±ØªØ¨Ø·Ø© Ø¨Ø­Ø³Ø§Ø¨Ùƒ.', darkGreen: darkGreen, onTap: (i) => setState(() => _expandedIndex = i)),
      SizedBox(height: AppSpacing.md.ah),
      FaqItem(index: 1, expandedIndex: _expandedIndex, title: 'ÙƒÙŠÙÙŠØ© ØªØ­Ø¯ÙŠØ« Ø±Ø®ØµØ© Ø§Ù„Ù‚ÙŠØ§Ø¯Ø©ØŸ', content: 'ÙŠÙ…ÙƒÙ†Ùƒ ØªØ­Ø¯ÙŠØ« Ø±Ø®ØµØ© Ø§Ù„Ù‚ÙŠØ§Ø¯Ø© Ù…Ù† Ø®Ù„Ø§Ù„ Ù…Ø±ÙƒØ² Ø§Ù„ÙˆØ«Ø§Ø¦Ù‚ ÙÙŠ Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ.', darkGreen: darkGreen, onTap: (i) => setState(() => _expandedIndex = i)),
      SizedBox(height: AppSpacing.md.ah),
      FaqItem(index: 2, expandedIndex: _expandedIndex, title: 'Ù…Ø§Ø°Ø§ Ø£ÙØ¹Ù„ ÙÙŠ Ø­Ø§Ù„Ø© Ø¹Ø·Ù„ Ø§Ù„Ø³ÙŠØ§Ø±Ø©ØŸ', content: 'ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªÙˆØ§ØµÙ„ Ù…Ø¹ Ø§Ù„Ø¯Ø¹Ù… Ø§Ù„ÙÙ†ÙŠ Ø§Ù„Ù…Ø¨Ø§Ø´Ø± ÙÙˆØ±Ø§Ù‹ ÙˆØ¥Ù„ØºØ§Ø¡ Ø§Ù„Ø±Ø­Ù„Ø© Ø¥Ø°Ø§ ÙƒØ§Ù† Ù‡Ù†Ø§Ùƒ Ø±Ø§ÙƒØ¨.', darkGreen: darkGreen, onTap: (i) => setState(() => _expandedIndex = i)),
    ]);
  }
}











