import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_card.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';
import 'package:micromasr/features/passenger/faq_item_tile.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({super.key});

  @override
  State<HelpCenterScreen> createState() => _HelpCenterScreenState();
}

class _HelpCenterScreenState extends State<HelpCenterScreen> {
  String selectedCategory = 'Ø§Ù„ÙƒÙ„';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'Ù…Ø±ÙƒØ² Ø§Ù„Ù…Ø³Ø§Ø¹Ø¯Ø©'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            // Search Bar
            AppCard(
              padding: EdgeInsets.symmetric(horizontal: 16.aw, vertical: 8.ah),
              child: Row(
                children: [
                  Icon(Icons.search, color: context.colors.textSecondary),
                  const Spacer(),
                  Text(
                    'ÙƒÙŠÙ ÙŠÙ…ÙƒÙ†Ù†Ø§ Ù…Ø³Ø§Ø¹Ø¯ØªÙƒØŸ',
                    style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary),
                  ),
                ],
              ),
            ),
            const VerticalSpace(24),
            
            // Categories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ['Ø§Ù„ÙƒÙ„', 'Ø§Ù„Ø­Ø¬Ø²', 'Ø§Ù„Ø¯ÙØ¹', 'Ø§Ù„Ø£Ù…Ø§Ù†'].map((cat) => _buildCategory(cat)).toList(),
              ),
            ),
            const VerticalSpace(24),

            // FAQ List
            const FAQItemTile(
              question: 'ÙƒÙŠÙ ÙŠÙ…ÙƒÙ†Ù†ÙŠ Ø­Ø¬Ø² Ø±Ø­Ù„Ø©ØŸ',
              answer: 'ÙŠÙ…ÙƒÙ†Ùƒ Ø­Ø¬Ø² Ø±Ø­Ù„Ø© Ù…Ù† Ø®Ù„Ø§Ù„ Ø§Ø®ØªÙŠØ§Ø± ÙˆØ¬Ù‡ØªÙƒ Ù…Ù† Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ© ÙˆØªØ­Ø¯ÙŠØ¯ Ù…ÙˆØ¹Ø¯ Ø§Ù„Ø±Ø­Ù„Ø© Ø§Ù„Ù…Ù†Ø§Ø³Ø¨ Ù„Ùƒ.',
            ),
            const FAQItemTile(
              question: 'Ù…Ø§ Ù‡ÙŠ Ø·Ø±Ù‚ Ø§Ù„Ø¯ÙØ¹ Ø§Ù„Ù…ØªØ§Ø­Ø©ØŸ',
              answer: 'Ù†ÙˆÙØ± Ø¹Ø¯Ø© Ø·Ø±Ù‚ Ù„Ù„Ø¯ÙØ¹ ØªØ´Ù…Ù„ Ø§Ù„Ø¯ÙØ¹ Ø§Ù„Ù†Ù‚Ø¯ÙŠØŒ Ø§Ù„Ø¨Ø·Ø§Ù‚Ø§Øª Ø§Ù„Ø§Ø¦ØªÙ…Ø§Ù†ÙŠØ©ØŒ ÙˆÙÙˆØ¯Ø§ÙÙˆÙ† ÙƒØ§Ø´.',
            ),
            const FAQItemTile(
              question: 'ÙƒÙŠÙ ÙŠÙ…ÙƒÙ†Ù†ÙŠ Ø¥Ù„ØºØ§Ø¡ Ø§Ù„Ø­Ø¬Ø²ØŸ',
              answer: 'ÙŠÙ…ÙƒÙ†Ùƒ Ø¥Ù„ØºØ§Ø¡ Ø§Ù„Ø­Ø¬Ø² Ù…Ù† Ø®Ù„Ø§Ù„ Ù‚Ø§Ø¦Ù…Ø© "Ø±Ø­Ù„Ø§ØªÙŠ" Ù‚Ø¨Ù„ Ù…ÙˆØ¹Ø¯ Ø§Ù„Ø±Ø­Ù„Ø© Ø¨Ù€ Ù£Ù  Ø¯Ù‚ÙŠÙ‚Ø© Ø¹Ù„Ù‰ Ø§Ù„Ø£Ù‚Ù„.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategory(String label) {
    final isSelected = selectedCategory == label;
    return GestureDetector(
      onTap: () => setState(() => selectedCategory = label),
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 12.aw),
        padding: EdgeInsets.symmetric(horizontal: 20.aw, vertical: 10.ah),
        decoration: BoxDecoration(
          color: isSelected ? context.colors.primary : Colors.white,
          borderRadius: BorderRadius.circular(20.ar),
          boxShadow: [
            if (!isSelected)
              BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10),
          ],
        ),
        child: Text(
          label,
          style: context.bodySmallTextStyle.copyWith(
            color: isSelected ? Colors.white : context.colors.textSecondary,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}











