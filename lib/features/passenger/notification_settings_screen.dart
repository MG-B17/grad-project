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
import 'package:micromasr/core/app_strings.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() => _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState extends State<NotificationSettingsScreen> {
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
      appBar: const ProfileAppBar(title: 'إعدادات التنبيهات'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            Text(
              'تحكم في كيفية وصول التنبيهات إليك',
              style: context.bodySmallTextStyle.copyWith(color: context.colors.textSecondary),
            ),
            const VerticalSpace(24),
            
            ProfileSection(
              title: 'تنبيهات الرحلات',
              children: [
                NotificationSwitchRow(label: 'تحديثات حالة الحجز', value: bookingUpdates, onChanged: (v) => setState(() => bookingUpdates = v)),
                NotificationSwitchRow(label: 'وصول الميكروباص', value: microbusArrival, onChanged: (v) => setState(() => microbusArrival = v)),
                NotificationSwitchRow(label: AppStrings.rateYourTrip, value: tripRating, onChanged: (v) => setState(() => tripRating = v)),
              ],
            ),
            
            const VerticalSpace(24),
            ProfileSection(
              title: 'العروض والأخبار',
              children: [
                NotificationSwitchRow(label: 'كوبونات خصم جديدة', value: newCoupons, onChanged: (v) => setState(() => newCoupons = v)),
                NotificationSwitchRow(label: 'أخبار النظام', value: systemNews, onChanged: (v) => setState(() => systemNews = v)),
              ],
            ),
            
            const VerticalSpace(24),
            ProfileSection(
              title: 'طرق التنبيه',
              children: [
                NotificationSwitchRow(label: 'إشعارات الهاتف (Push)', value: pushEnabled, onChanged: (v) => setState(() => pushEnabled = v)),
                NotificationSwitchRow(label: 'رسائل نصية (SMS)', value: smsEnabled, onChanged: (v) => setState(() => smsEnabled = v)),
                NotificationSwitchRow(label: 'البريد الإلكتروني', value: emailEnabled, onChanged: (v) => setState(() => emailEnabled = v)),
              ],
            ),
            
            const VerticalSpace(40),
            AppButton(
              label: 'حفظ الإعدادات',
              onPressed: () => context.go(AppRouteConstants.passengerProfile),
            ),
            const VerticalSpace(40),
          ],
        ),
      ),
    );
  }
}
