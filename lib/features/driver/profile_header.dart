import 'package:flutter/material.dart';
import 'package:micromasr/core/app_spacing.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';

class ProfileHeader extends StatelessWidget {
  final dynamic profile;
  final Color darkGreen;
  const ProfileHeader({super.key, required this.profile, required this.darkGreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: darkGreen, 
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32), 
          bottomRight: Radius.circular(32),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            const _AppBarArea(),
            SizedBox(height: AppSpacing.md.ah),
            _AvatarArea(name: profile.name),
            SizedBox(height: AppSpacing.sm.ah),
            Text(
              profile.name, 
              style: context.titleLargeTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              'Ø³Ø§Ø¦Ù‚ Ù…ÙŠÙƒØ±Ùˆ Ù…ØµØ± Ø§Ù„Ù…Ø¹ØªÙ…Ø¯', 
              style: context.bodyMediumTextStyle.copyWith(color: Colors.white.withValues(alpha: 0.8)),
            ),
            SizedBox(height: AppSpacing.xl.ah),
            const _HeaderStatsRow(),
            SizedBox(height: AppSpacing.xl.ah),
          ],
        ),
      ),
    );
  }
}

class _AppBarArea extends StatelessWidget {
  const _AppBarArea();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.aw, vertical: AppSpacing.sm.ah),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu_rounded, color: Colors.white),
          Text(
            'Micro Masr', 
            style: context.titleMediumTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          CircleAvatar(
            radius: 16.aw, 
            backgroundColor: Colors.white.withValues(alpha: 0.2), 
            child: const Icon(Icons.person, color: Colors.white, size: 20),
          ),
        ],
      ),
    );
  }
}

class _AvatarArea extends StatelessWidget {
  final String name;
  const _AvatarArea({required this.name});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: 40.aw, 
          backgroundColor: Colors.lightGreen, 
          child: Text(
            name.substring(0, 1), 
            style: context.headlineMediumTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(
          radius: 10.aw, 
          backgroundColor: Colors.white, 
          child: CircleAvatar(
            radius: 8.aw, 
            backgroundColor: Colors.blue, 
            child: Icon(Icons.check, color: Colors.white, size: 12.aw),
          ),
        ),
      ],
    );
  }
}

class _HeaderStatsRow extends StatelessWidget {
  const _HeaderStatsRow();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.aw),
      child: const Row(
        children: [
          _StatBox(label: 'Ø±Ø­Ù„Ø©', value: 'Ù¡Ù¢Ù¤'),
          
          _StatBox(label: 'Ø£Ø±Ø¨Ø§Ø­Ùƒ', value: 'Ù¡Ù¢Ù¨Ù Ø¬'),
          
          _StatBox(label: 'ØªÙ‚ÙŠÙŠÙ…', value: 'Ù¤.Ù©â­ï¸'),
        ],
      ),
    );
  }
}

class _StatBox extends StatelessWidget {
  final String label, value;
  const _StatBox({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppSpacing.sm.ah),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1), 
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Text(
              value, 
              style: context.titleMediumTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              label, 
              style: context.bodySmallTextStyle.copyWith(color: Colors.white.withValues(alpha: 0.8)),
            ),
          ],
        ),
      ),
    );
  }
}












