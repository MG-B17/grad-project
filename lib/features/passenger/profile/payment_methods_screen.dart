import 'package:flutter/material.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/features/passenger/profile/presentation/widgets/common/profile_app_bar.dart';
import 'package:micromasr/features/passenger/profile/presentation/widgets/payment/profile_payment_card.dart';

class ProfilePaymentMethodsScreen extends StatelessWidget {
  const ProfilePaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'طرق الدفع'),
      body: Padding(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            ProfilePaymentCard(
              label: 'بطاقة مدى',
              subtitle: '**** **** **** ٤٥٦٧',
              icon: Icons.credit_card_rounded,
              isSelected: true,
              onTap: () {},
            ),
            ProfilePaymentCard(
              label: 'فيزا كارد',
              subtitle: '**** **** **** ١٢٣٤',
              icon: Icons.credit_card_rounded,
              onTap: () {},
            ),
            ProfilePaymentCard(
              label: 'فودافون كاش',
              subtitle: '٠١٠٠ **** ***',
              icon: Icons.phone_android_rounded,
              onTap: () {},
            ),
            const Spacer(),
            AppButton(
              label: 'إضافة بطاقة جديدة',
              icon: Icons.add_circle_outline_rounded,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
