import 'package:flutter/material.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/core/app_button.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';
import 'package:micromasr/features/passenger/profile_payment_card.dart';

class PaymentMethodsScreen extends StatelessWidget {
  const PaymentMethodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'Ø·Ø±Ù‚ Ø§Ù„Ø¯ÙØ¹'),
      body: Padding(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            ProfilePaymentCard(
              label: 'Ø¨Ø·Ø§Ù‚Ø© Ù…Ø¯Ù‰',
              subtitle: '**** **** **** Ù¤Ù¥Ù¦Ù§',
              icon: Icons.credit_card_rounded,
              isSelected: true,
              onTap: () {},
            ),
            ProfilePaymentCard(
              label: 'ÙÙŠØ²Ø§ ÙƒØ§Ø±Ø¯',
              subtitle: '**** **** **** Ù¡Ù¢Ù£Ù¤',
              icon: Icons.credit_card_rounded,
              onTap: () {},
            ),
            ProfilePaymentCard(
              label: 'ÙÙˆØ¯Ø§ÙÙˆÙ† ÙƒØ§Ø´',
              subtitle: 'Ù Ù¡Ù Ù  **** ***',
              icon: Icons.phone_android_rounded,
              onTap: () {},
            ),
            const Spacer(),
            AppButton(
              label: 'Ø¥Ø¶Ø§ÙØ© Ø¨Ø·Ø§Ù‚Ø© Ø¬Ø¯ÙŠØ¯Ø©',
              icon: Icons.add_circle_outline_rounded,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}











