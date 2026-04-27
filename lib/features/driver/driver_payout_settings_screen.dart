import 'package:flutter/material.dart';
import 'package:micromasr/core/app_spacing.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/features/driver/payout_widgets.dart';
import 'package:micromasr/features/driver/profile_base_widgets.dart';

class DriverPayoutSettingsScreen extends StatefulWidget {
  const DriverPayoutSettingsScreen({super.key});
  @override
  State<DriverPayoutSettingsScreen> createState() => _DriverPayoutSettingsScreenState();
}

class _DriverPayoutSettingsScreenState extends State<DriverPayoutSettingsScreen> {
  int _selectedNewMethod = -1;

  @override
  Widget build(BuildContext context) {
    const darkGreen = Color(0xFF4A7450), orangeColor = Color(0xFFE28B5A);
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.aw, vertical: AppSpacing.md.ah),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            const ProfileHeader(title: 'Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØµØ±Ù', darkGreen: darkGreen),
            SizedBox(height: AppSpacing.xl.ah),
            const CurrentPayoutCard(darkGreen: darkGreen),
            SizedBox(height: AppSpacing.xl.ah),
            const ProfileSectionHeader(title: 'Ø¥Ø¶Ø§ÙØ© ÙˆØ³ÙŠÙ„Ø© ØµØ±Ù Ø¬Ø¯ÙŠØ¯Ø©', darkGreen: darkGreen),
            SizedBox(height: AppSpacing.md.ah),
            PayoutMethodRadio(index: 0, selectedIndex: _selectedNewMethod, title: 'Ø­Ø³Ø§Ø¨ Ø¨Ù†ÙƒÙŠ (Eban)', icon: Icons.account_balance_rounded, darkGreen: darkGreen, onTap: (i) => setState(() => _selectedNewMethod = i)),
            SizedBox(height: AppSpacing.md.ah),
            PayoutMethodRadio(index: 1, selectedIndex: _selectedNewMethod, title: 'Ø¥Ù†Ø³ØªØ§ Ø¨Ø§ÙŠ', icon: Icons.payments_outlined, darkGreen: darkGreen, onTap: (i) => setState(() => _selectedNewMethod = i)),
            SizedBox(height: 64.ah),
            _buildConfirmButton(orangeColor),
            SizedBox(height: AppSpacing.md.ah),
            Text('ØªØ­ÙˆÙŠÙ„ Ø§Ù„Ø£Ø±Ø¨Ø§Ø­ ÙŠØªÙ… ÙÙŠ ÙŠÙˆÙ… Ø§Ù„Ø®Ù…ÙŠØ³ Ù…Ù† ÙƒÙ„ Ø£Ø³Ø¨ÙˆØ¹.', textAlign: TextAlign.center, style: context.bodySmallTextStyle.copyWith(color: Colors.lightGreen)),
          ]),
        ),
      ),
    );
  }

  Widget _buildConfirmButton(Color orangeColor) {
    return Container(
      width: double.infinity, padding: EdgeInsets.symmetric(vertical: 16.ah),
      decoration: BoxDecoration(color: orangeColor, borderRadius: BorderRadius.circular(32)),
      alignment: Alignment.center, child: Text('ØªØ£ÙƒÙŠØ¯ Ø§Ù„ÙˆØ³ÙŠÙ„Ø© Ø§Ù„Ø£Ø³Ø§Ø³ÙŠØ©', style: context.titleMediumTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}











