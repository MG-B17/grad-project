import 'package:flutter/material.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:go_router/go_router.dart';
import './profile_section.dart';
import './profile_menu_item.dart';

class PreferencesSection extends StatelessWidget {
  final bool isDarkMode;
  final bool notificationsEnabled;
  final ValueChanged<bool> onDarkModeToggle;
  final ValueChanged<bool> onNotificationsToggle;

  const PreferencesSection({
    super.key,
    required this.isDarkMode,
    required this.notificationsEnabled,
    required this.onDarkModeToggle,
    required this.onNotificationsToggle,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileSection(
      title: 'Ø§Ù„ØªÙØ¶ÙŠÙ„Ø§Øª',
      children: [
        ProfileMenuItem(
          icon: Icons.language_rounded,
          label: 'Ø§Ù„Ù„ØºØ©',
          subtitle: 'Ø§Ù„Ø¹Ø±Ø¨ÙŠØ©',
          onTap: () => context.push(AppRouteConstants.language),
        ),
        ProfileMenuItem(
          icon: Icons.notifications_none_rounded,
          label: 'Ø¥Ø¹Ø¯Ø§Ø¯Ø§Øª Ø§Ù„ØªÙ†Ø¨ÙŠÙ‡Ø§Øª',
          onTap: () => context.push(AppRouteConstants.notificationSettings),
        ),
        _buildSwitchItem(
          icon: Icons.dark_mode_outlined,
          label: 'Ø§Ù„ÙˆØ¶Ø¹ Ø§Ù„Ù„ÙŠÙ„ÙŠ',
          value: isDarkMode,
          onChanged: onDarkModeToggle,
        ),
      ],
    );
  }

  Widget _buildSwitchItem({
    required IconData icon,
    required String label,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 20),
      ),
      title: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
      trailing: Switch.adaptive(value: value, onChanged: onChanged),
    );
  }
}











