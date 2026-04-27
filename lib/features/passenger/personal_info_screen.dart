import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/app_button.dart';
import 'package:micromasr/core/app_text_field.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø´Ø®ØµÙŠØ©'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            // Profile Image Section
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 100.aw,
                    height: 100.aw,
                    decoration: BoxDecoration(
                      color: const Color(0xFFB5D1B9),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 4),
                      boxShadow: [
                        BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Ù… Ø¬',
                        style: context.headlineLargeTextStyle.copyWith(color: context.colors.primary, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    bottom: 0,
                    start: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: context.colors.primary,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: const Icon(Icons.camera_alt_rounded, color: Colors.white, size: 16),
                    ),
                  ),
                ],
              ),
            ),
            const VerticalSpace(32),
            
            // Info Fields
            AppTextField(
              label: 'Ø§Ù„Ø§Ø³Ù… Ø§Ù„ÙƒØ§Ù…Ù„',
              initialValue: 'Ù…ØµØ·ÙÙ‰ Ø¬Ù…Ø§Ù„',
              prefixIcon: Icon(Icons.person_outline, color: context.colors.primary),
            ),
            const VerticalSpace(16),
            AppTextField(
              label: 'Ø±Ù‚Ù… Ø§Ù„Ù‡Ø§ØªÙ',
              initialValue: 'Ù Ù¡Ù Ù Ù¢Ù£Ù¤Ù¥Ù¦Ù§Ù¨',
              prefixIcon: Icon(Icons.phone_android_outlined, color: context.colors.primary),
              keyboardType: TextInputType.phone,
            ),
            const VerticalSpace(16),
            AppTextField(
              label: 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ',
              initialValue: 'mostafa@example.com',
              prefixIcon: Icon(Icons.email_outlined, color: context.colors.primary),
              keyboardType: TextInputType.emailAddress,
            ),
            
            const VerticalSpace(32),
            
            // Password Section
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'ØªØºÙŠÙŠØ± ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±',
                  style: context.titleSmallTextStyle.copyWith(fontWeight: FontWeight.bold, color: context.colors.primary),
                ),
                const SizedBox(width: 8),
                Icon(Icons.lock_outline, color: context.colors.primary, size: 20),
              ],
            ),
            const VerticalSpace(16),
            const AppTextField(
              label: 'ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø­Ø§Ù„ÙŠØ©',
              obscureText: true,
            ),
            const VerticalSpace(12),
            const AppTextField(
              label: 'ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø¬Ø¯ÙŠØ¯Ø©',
              obscureText: true,
            ),

            const VerticalSpace(40),
            AppButton(
              label: 'Ø­ÙØ¸ Ø§Ù„ØªØºÙŠÙŠØ±Ø§Øª',
              onPressed: () => context.go(AppRouteConstants.passengerProfile),
            ),
            const VerticalSpace(40),
          ],
        ),
      ),
    );
  }
}











