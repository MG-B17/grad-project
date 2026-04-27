import 'package:flutter/material.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';
import 'package:micromasr/features/passenger/saved_place_item.dart';
import 'package:micromasr/core/app_button.dart';

class SavedPlacesScreen extends StatelessWidget {
  const SavedPlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'Ø§Ù„Ø£Ù…Ø§ÙƒÙ† Ø§Ù„Ù…Ø­ÙÙˆØ¸Ø©'),
      body: Padding(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            SavedPlaceItem(
              icon: Icons.home_rounded,
              label: 'Ø§Ù„Ù…Ù†Ø²Ù„',
              address: 'Ù¡Ù¥ Ø´Ø§Ø±Ø¹ Ø§Ù„ØªØ­Ø±ÙŠØ±ØŒ Ø§Ù„Ø¯Ù‚ÙŠ',
              onDelete: () {},
            ),
            const VerticalSpace(16),
            SavedPlaceItem(
              icon: Icons.work_rounded,
              label: 'Ø§Ù„Ø¹Ù…Ù„',
              address: 'Ø§Ù„Ù‚Ø±ÙŠØ© Ø§Ù„Ø°ÙƒÙŠØ©ØŒ Ø·Ø±ÙŠÙ‚ Ù…ØµØ± Ø§Ø³ÙƒÙ†Ø¯Ø±ÙŠØ©',
              onDelete: () {},
            ),
            const Spacer(),
            AppButton(
              label: 'Ø¥Ø¶Ø§ÙØ© Ù…ÙƒØ§Ù† Ø¬Ø¯ÙŠØ¯',
              icon: Icons.add_circle_outline_rounded,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}











