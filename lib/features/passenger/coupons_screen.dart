import 'package:flutter/material.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/features/passenger/profile_app_bar.dart';
import 'package:micromasr/features/passenger/coupon_item.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2EFE8),
      appBar: const ProfileAppBar(title: 'ÙƒÙˆØ¨ÙˆÙ†Ø§Øª Ø§Ù„Ø®ØµÙ…'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.aw),
        child: Column(
          children: [
            CouponItem(
              title: 'Ø®ØµÙ… Ø§Ù„Ù…Ø´ÙˆØ§Ø± Ø§Ù„Ø£ÙˆÙ„',
              discount: 'Ø®ØµÙ… Ù¥Ù Ùª',
              expiry: 'Ù£Ù  Ù…Ø§ÙŠÙˆ Ù¢Ù Ù¢Ù¦',
              onActivate: () {},
            ),
            CouponItem(
              title: 'Ø¹Ø±Ø¶ Ø§Ù„ÙˆÙŠÙƒ Ø¥Ù†Ø¯',
              discount: 'Ø®ØµÙ… Ù¢Ù  Ø¬.Ù…',
              expiry: 'Ù¡Ù¥ Ù…Ø§ÙŠÙˆ Ù¢Ù Ù¢Ù¦',
              onActivate: () {},
            ),
            CouponItem(
              title: 'ÙƒÙˆØ¨ÙˆÙ† Ø±Ù…Ø¶Ø§Ù† ÙƒØ±ÙŠÙ…',
              discount: 'Ù…Ø´ÙˆØ§Ø± Ù…Ø¬Ø§Ù†ÙŠ',
              expiry: 'Ù¡Ù  Ù…Ø§ÙŠÙˆ Ù¢Ù Ù¢Ù¦',
              onActivate: () {},
            ),
          ],
        ),
      ),
    );
  }
}











