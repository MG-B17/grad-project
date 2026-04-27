import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/core/widgets/app_text_field.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import 'package:micromasr/features/passenger/profile/presentation/widgets/common/profile_app_bar.dart';

class PersonalInfoScreen extends StatelessWidget {
  const PersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'المعلومات الشخصية'),
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
                        'م ج',
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
              label: 'الاسم الكامل',
              initialValue: 'مصطفى جمال',
              prefixIcon: Icon(Icons.person_outline, color: context.colors.primary),
            ),
            const VerticalSpace(16),
            AppTextField(
              label: 'رقم الهاتف',
              initialValue: '٠١٠٠٢٣٤٥٦٧٨',
              prefixIcon: Icon(Icons.phone_android_outlined, color: context.colors.primary),
              keyboardType: TextInputType.phone,
            ),
            const VerticalSpace(16),
            AppTextField(
              label: 'البريد الإلكتروني',
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
                  'تغيير كلمة المرور',
                  style: context.titleSmallTextStyle.copyWith(fontWeight: FontWeight.bold, color: context.colors.primary),
                ),
                const SizedBox(width: 8),
                Icon(Icons.lock_outline, color: context.colors.primary, size: 20),
              ],
            ),
            const VerticalSpace(16),
            const AppTextField(
              label: 'كلمة المرور الحالية',
              obscureText: true,
            ),
            const VerticalSpace(12),
            const AppTextField(
              label: 'كلمة المرور الجديدة',
              obscureText: true,
            ),

            const VerticalSpace(40),
            AppButton(
              label: 'حفظ التغييرات',
              onPressed: () => context.go(AppRouteConstants.passengerProfile),
            ),
            const VerticalSpace(40),
          ],
        ),
      ),
    );
  }
}
