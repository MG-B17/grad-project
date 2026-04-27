import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_card.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'package:micromasr/core/horizontal_space.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';
import 'package:micromasr/features/passenger/contact_option_card.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'ØªÙˆØ§ØµÙ„ Ù…Ø¹Ù†Ø§'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            ContactOptionCard(
              icon: Icons.phone_in_talk_rounded,
              label: 'Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ',
              value: 'Ù¡Ù©Ù Ù Ù ',
              color: Colors.blue,
              onTap: () {},
            ),
            const VerticalSpace(16),
            ContactOptionCard(
              icon: Icons.chat_bubble_rounded,
              label: 'ÙˆØ§ØªØ³Ø§Ø¨',
              value: '+Ù¢Ù Ù¡Ù Ù Ù Ù Ù Ù Ù Ù Ù ',
              color: Colors.green,
              onTap: () {},
            ),
            const VerticalSpace(16),
            ContactOptionCard(
              icon: Icons.email_rounded,
              label: 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ',
              value: 'support@micromasr.com',
              color: Colors.orange,
              onTap: () {},
            ),
            const VerticalSpace(24),
            
            // Address Card
            AppCard(
              padding: EdgeInsets.all(16.aw),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Ø§Ù„ÙØ±Ø¹ Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠ',
                        style: context.titleLargeTextStyle.copyWith(
                          color: context.colors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const VerticalSpace(4),
                      Text(
                        'Ø§Ù„Ù…Ù†ØµÙˆØ±Ø©ØŒ Ø§Ù„Ù…Ø´Ø§ÙŠØ© Ø§Ù„Ø³ÙÙ„ÙŠØ©ØŒ\nØ¨Ø¬ÙˆØ§Ø± Ù†Ø§Ø¯ÙŠ Ø¬Ø²ÙŠØ±Ø© Ø§Ù„ÙˆØ±Ø¯',
                        textAlign: TextAlign.right,
                        style: context.bodyMediumTextStyle.copyWith(
                          color: context.colors.textSecondary,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                  const HorizontalSpace(16),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Icon(Icons.location_on_rounded, color: context.colors.primary, size: 24.aw),
                  ),
                ],
              ),
            ),
            
            const VerticalSpace(32),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.aw, vertical: 10.ah),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.ar),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'ÙŠÙˆÙ…ÙŠØ§Ù‹ Ù…Ù† Ù© ØµØ¨Ø§Ø­Ø§Ù‹ Ø­ØªÙ‰ Ù¡Ù¡ Ù…Ø³Ø§Ø¡Ù‹',
                    style: context.bodyMediumTextStyle.copyWith(color: Colors.lightGreen, fontWeight: FontWeight.bold),
                  ),
                  const HorizontalSpace(8),
                  Icon(Icons.access_time_rounded, color: Colors.lightGreen, size: 20.aw),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}











