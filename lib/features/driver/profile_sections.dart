import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/features/driver/driver_shared_widgets.dart';
import 'package:micromasr/features/driver/driver_document_center_screen.dart';
import 'package:micromasr/features/driver/driver_payout_settings_screen.dart';
import 'package:micromasr/features/driver/driver_personal_info_screen.dart';
import 'package:micromasr/features/driver/driver_report_issue_screen.dart';
import 'package:micromasr/features/driver/driver_support_screen.dart';
import 'package:micromasr/features/driver/driver_vehicle_details_screen.dart';
import 'package:micromasr/features/driver/profile_base_widgets.dart';

class WorkDataSection extends StatelessWidget {
  final Color darkGreen;
  const WorkDataSection({super.key, required this.darkGreen});
  @override
  Widget build(BuildContext context) {
    return ProfileBaseSection(title: 'Ø¨ÙŠØ§Ù†Ø§Øª Ø§Ù„Ø¹Ù…Ù„', children: [
      ProfileListTile(title: 'Ø§Ù„Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø´Ø®ØµÙŠØ©', icon: Icons.person_outline, darkGreen: darkGreen, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DriverPersonalInfoScreen()))),
      ProfileListTile(title: 'ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù…Ø±ÙƒØ¨Ø©', subtitle: 'Ù…ÙŠÙƒØ±ÙˆØ¨Ø§Øµ Ø£ Ø¨ Ø¬ Ù¡Ù¢Ù£Ù¤', icon: Icons.directions_bus_outlined, darkGreen: darkGreen, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DriverVehicleDetailsScreen()))),
      ProfileListTile(title: 'Ù…Ø±ÙƒØ² Ø§Ù„ÙˆØ«Ø§Ø¦Ù‚', subtitle: 'ÙˆØ«Ø§Ø¦Ù‚ Ø³Ø§Ø±ÙŠØ© âœ“', subtitleColor: Colors.lightGreen, icon: Icons.description_outlined, darkGreen: darkGreen, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DriverDocumentCenterScreen()))),
    ]);
  }
}

class FinancialSection extends StatelessWidget {
  final Color darkGreen;
  const FinancialSection({super.key, required this.darkGreen});
  @override
  Widget build(BuildContext context) {
    return ProfileBaseSection(title: 'Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„Ù…Ø§Ù„ÙŠØ©', children: [
      ProfileListTile(title: 'Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØµØ±Ù', subtitle: 'Vodafone Cash', icon: Icons.account_balance_wallet_outlined, darkGreen: darkGreen, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DriverPayoutSettingsScreen()))),
    ]);
  }
}

class PreferencesSection extends StatelessWidget {
  final Color darkGreen;
  const PreferencesSection({super.key, required this.darkGreen});
  @override
  Widget build(BuildContext context) {
    return ProfileBaseSection(title: 'Ø§Ù„ØªÙØ¶ÙŠÙ„Ø§Øª', children: [
      ProfileListTile(title: 'Ø§Ù„Ù„ØºØ©', subtitle: 'Ø§Ù„Ø¹Ø±Ø¨ÙŠØ© ðŸ‡ªðŸ‡¬', icon: Icons.language_outlined, darkGreen: darkGreen),
      ProfileListTile(title: 'Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡Ø§Øª', trailing: Switch(value: true, onChanged: (v) {}, activeThumbColor: darkGreen), icon: Icons.notifications_none_rounded, darkGreen: darkGreen),
    ]);
  }
}

class SupportSection extends StatelessWidget {
  final Color darkGreen, orangeColor;
  const SupportSection({super.key, required this.darkGreen, required this.orangeColor});
  @override
  Widget build(BuildContext context) {
    return ProfileBaseSection(title: 'Ø§Ù„Ø¯Ø¹Ù…', children: [
      ProfileListTile(title: 'Ù…Ø±ÙƒØ² Ø§Ù„Ù…Ø³Ø§Ø¹Ø¯Ø©', icon: Icons.help_outline_rounded, darkGreen: darkGreen, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DriverSupportScreen()))),
      ProfileListTile(title: 'Ø§Ù„Ø¨Ù„Ø§ØºØ§Øª', icon: Icons.report_problem_outlined, darkGreen: darkGreen, iconColor: orangeColor, onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const DriverReportIssueScreen()))),
    ]);
  }
}

class LogoutButton extends StatelessWidget {
  final Color orangeColor;
  const LogoutButton({super.key, required this.orangeColor});
  @override
  Widget build(BuildContext context) {
    return DriverCard(padding: EdgeInsets.symmetric(vertical: 16.ah), borderRadius: 24, boxShadow: const [], color: Colors.white, child: Center(child: Text('ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø®Ø±ÙˆØ¬', style: context.titleMediumTextStyle.copyWith(color: orangeColor, fontWeight: FontWeight.bold))));
  }
}











