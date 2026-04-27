import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import '../widgets/main_profile/profile_header.dart';
import '../widgets/main_profile/profile_stats_row.dart';
import '../widgets/main_profile/account_section.dart';
import '../widgets/main_profile/preferences_section.dart';
import '../widgets/main_profile/support_section.dart';
import '../widgets/main_profile/logout_button.dart';

class PassengerProfileScreen extends StatefulWidget {
  const PassengerProfileScreen({super.key});

  @override
  State<PassengerProfileScreen> createState() => _PassengerProfileScreenState();
}

class _PassengerProfileScreenState extends State<PassengerProfileScreen> {
  bool _isDarkMode = false;
  bool _notificationsEnabled = true;

  @override
  Widget build(BuildContext context) {
    const String name = "مصطفى";
    const String phone = "01012345678";
    const int tripsCount = 12;
    const double rating = 4.8;
    const double balance = 150.0;

    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const ProfileHeader(
              name: name,
              phone: phone,
            ),
            
            // Stats Row
            Transform.translate(
              offset: Offset(0, -30.ah),
              child: const ProfileStatsRow(
                trips: tripsCount,
                rating: rating,
                balance: balance,
              ),
            ),

            // Menu Sections
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.aw),
              child: Column(
                children: [
                  const AccountSection(),
                  const VerticalSpace(24),
                  PreferencesSection(
                    isDarkMode: _isDarkMode,
                    notificationsEnabled: _notificationsEnabled,
                    onDarkModeToggle: (v) => setState(() => _isDarkMode = v),
                    onNotificationsToggle: (v) => setState(() => _notificationsEnabled = v),
                  ),
                  const VerticalSpace(24),
                  const SupportSection(),
                  const VerticalSpace(32),
                  LogoutButton(
                    onTap: () {
                      context.go(AppRouteConstants.toggle);
                    },
                  ),
                  const VerticalSpace(16),
                  Text(
                    'Micro Masr v1.0.0',
                    style: context.bodySmallTextStyle.copyWith(
                      color: context.colors.textSecondary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const VerticalSpace(40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

