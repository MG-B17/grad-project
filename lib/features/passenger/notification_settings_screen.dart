import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_button.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';
import 'package:micromasr/features/passenger/profile_section.dart';
import 'package:micromasr/features/passenger/notification_switch_row.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
  // Mock states for switches
  bool bookingUpdates = true;
  bool microbusArrival = true;
  bool tripRating = true;
  bool newCoupons = true;
  bool systemNews = false;
  bool pushEnabled = true;
  bool smsEnabled = false;
  bool emailEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡Ø§Øª'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            Text(
              'ØªØ­ÙƒÙ… ÙÙŠ ÙƒÙŠÙÙŠØ© ÙˆØµÙˆÙ„ Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡Ø§Øª Ø¥Ù„ÙŠÙƒ',
              style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary),
            ),
            const VerticalSpace(24),
            
            ProfileSection(
              title: 'ØªÙ†Ø¨ÙŠÙ‡Ø§Øª Ø§Ù„Ø±Ø­Ù„Ø§Øª',
              children: [
                NotificationSwitchRow(label: 'ØªØ­Ø¯ÙŠØ«Ø§Øª Ø­Ø§Ù„Ø© Ø§Ù„Ø­Ø¬Ø²', value: bookingUpdates, onChanged: (v) => setState(() => bookingUpdates = v)),
                NotificationSwitchRow(label: 'ÙˆØµÙˆÙ„ Ø§Ù„Ù…ÙŠÙƒØ±ÙˆØ¨Ø§Øµ', value: microbusArrival, onChanged: (v) => setState(() => microbusArrival = v)),
                NotificationSwitchRow(label: 'ØªÙ‚ÙŠÙŠÙ… Ø§Ù„Ø±Ø­Ù„Ø©', value: tripRating, onChanged: (v) => setState(() => tripRating = v)),
              ],
            ),
            
            const VerticalSpace(24),
            ProfileSection(
              title: 'Ø§Ù„Ø¹Ø±ÙˆØ¶ ÙˆØ§Ù„Ø£Ø®Ø¨Ø§Ø±',
              children: [
                NotificationSwitchRow(label: 'ÙƒÙˆØ¨ÙˆÙ†Ø§Øª Ø®ØµÙ… Ø¬Ø¯ÙŠØ¯Ø©', value: newCoupons, onChanged: (v) => setState(() => newCoupons = v)),
                NotificationSwitchRow(label: 'Ø£Ø®Ø¨Ø§Ø± Ø§Ù„Ù†Ø¸Ø§Ù…', value: systemNews, onChanged: (v) => setState(() => systemNews = v)),
              ],
            ),
            
            const VerticalSpace(24),
            ProfileSection(
              title: 'Ø·Ø±Ù‚ Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡',
              children: [
                NotificationSwitchRow(label: 'Ø¥Ø´Ø¹Ø§Ø±Ø§Øª Ø§Ù„Ù‡Ø§ØªÙ (Push)', value: pushEnabled, onChanged: (v) => setState(() => pushEnabled = v)),
                NotificationSwitchRow(label: 'Ø±Ø³Ø§Ø¦Ù„ Ù†ØµÙŠØ© (SMS)', value: smsEnabled, onChanged: (v) => setState(() => smsEnabled = v)),
                NotificationSwitchRow(label: 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', value: emailEnabled, onChanged: (v) => setState(() => emailEnabled = v)),
              ],
            ),
            
            const VerticalSpace(40),
            AppButton(
              label: 'Ø­ÙØ¸ Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª',
              onPressed: () => context.go(AppRouteConstants.passengerProfile),
            ),
            const VerticalSpace(40),
          ],
        ),
      ),
    );
  }
}











