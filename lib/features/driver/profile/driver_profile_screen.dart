import 'package:flutter/material.dart';
import 'package:micromasr/core/constants/app_spacing.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/features/driver/profile/presentation/widgets/profile_header.dart';
import 'package:micromasr/features/driver/profile/presentation/widgets/profile_sections.dart';

class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const darkGreen = Color(0xFF4A7450);
    const orangeColor = Color(0xFFE28B5A);

    // Dummy profile data
    final profile = DummyDriverProfile(
      name: "أحمد محمد",
      phone: "01012345678",
      rating: 4.9,
      tripsCount: 156,
      memberSince: "أكتوبر 2023",
    );

    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileHeader(profile: profile, darkGreen: darkGreen),
            Padding(
              padding: EdgeInsets.all(AppSpacing.md.aw),
              child: const Column(
                children: [
                  WorkDataSection(darkGreen: darkGreen),
                  SizedBox(height: AppSpacing.md.ah),
                  FinancialSection(darkGreen: darkGreen),
                  SizedBox(height: AppSpacing.md.ah),
                  PreferencesSection(darkGreen: darkGreen),
                  SizedBox(height: AppSpacing.md.ah),
                  SupportSection(darkGreen: darkGreen, orangeColor: orangeColor),
                  SizedBox(height: AppSpacing.xl.ah),
                  LogoutButton(orangeColor: orangeColor),
                  SizedBox(height: AppSpacing.xxl.ah),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DummyDriverProfile {
  final String name;
  final String phone;
  final double rating;
  final int tripsCount;
  final String memberSince;

  DummyDriverProfile({
    required this.name,
    required this.phone,
    required this.rating,
    required this.tripsCount,
    required this.memberSince,
  });
}

