import 'package:flutter/material.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';
import 'package:micromasr/features/driver/driver_active_trip_screen.dart';

class EarningsBox extends StatelessWidget {
  final Color orangeColor;
  const EarningsBox({super.key, required this.orangeColor});
  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, padding: EdgeInsets.symmetric(vertical: 12.ah), decoration: BoxDecoration(color: const Color(0xFFF2EFE8), borderRadius: BorderRadius.circular(24)), child: Column(children: [Text('Ø£Ø±Ø¨Ø§Ø­Ùƒ Ù…Ù† Ø§Ù„Ø±Ø­Ù„Ø©', style: context.bodyMediumTextStyle.copyWith(color: context.colors.textSecondary)), Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(bottom: 6.ah, right: 4.aw), child: Text('Ø¬Ù†ÙŠÙ‡', style: context.titleMediumTextStyle.copyWith(color: orangeColor, fontWeight: FontWeight.bold))), Text('Ù£Ù¢', style: context.headlineMediumTextStyle.copyWith(color: orangeColor, fontWeight: FontWeight.w900))])]));
  }
}

class AcceptButton extends StatelessWidget {
  final Color darkGreen;
  const AcceptButton({super.key, required this.darkGreen});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const DriverActiveTripScreen())), child: Container(width: double.infinity, padding: EdgeInsets.symmetric(vertical: 16.ah), decoration: BoxDecoration(color: darkGreen, borderRadius: BorderRadius.circular(32)), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Ù‚Ø¨ÙˆÙ„ Ø§Ù„Ø±Ø­Ù„Ø©', style: context.titleMediumTextStyle.copyWith(color: Colors.white, fontWeight: FontWeight.bold)), SizedBox(width: 8.aw), const Icon(Icons.directions_bus, color: Colors.white)])));
  }
}











