import 'package:flutter/material.dart';
import 'package:micromasr/core/app_spacing.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/size_extensions.dart';

class DriverReportIssueScreen extends StatelessWidget {
  const DriverReportIssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bgColor = const Color(0xFFF2EFE8);
    final darkGreen = const Color(0xFF4A7450);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg.aw, vertical: AppSpacing.md.ah),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Micro Masr',
                    style: context.titleMediumTextStyle.copyWith(
                      color: darkGreen,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Ø¥Ø¨Ù„Ø§Øº Ø¹Ù† Ù…Ø´ÙƒÙ„Ø©',
                        style: context.titleLargeTextStyle.copyWith(
                          color: darkGreen,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 16.aw),
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(Icons.arrow_forward_rounded, color: darkGreen),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: AppSpacing.xl.ah),

              // Form Card
              Container(
                padding: EdgeInsets.all(AppSpacing.lg.aw),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.03),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Issue Type
                    _buildLabel(context, 'Ù†ÙˆØ¹ Ø§Ù„Ù…Ø´ÙƒÙ„Ø©', darkGreen),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.aw, vertical: 12.ah),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EFE8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.keyboard_arrow_down_rounded, color: darkGreen),
                          Text(
                            'Ø§Ø®ØªØ± Ù†ÙˆØ¹ Ø§Ù„Ù…Ø´ÙƒÙ„Ø©...',
                            style: context.bodyMediumTextStyle.copyWith(
                              color: context.colors.textSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSpacing.xl.ah),

                    // Issue Details
                    _buildLabel(context, 'ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ù…Ø´ÙƒÙ„Ø©', darkGreen),
                    Container(
                      height: 120.ah,
                      padding: EdgeInsets.symmetric(horizontal: AppSpacing.md.aw, vertical: 12.ah),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2EFE8),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: TextField(
                        textAlign: TextAlign.right,
                        maxLines: null,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'ØµÙ Ø§Ù„Ù…Ø´ÙƒÙ„Ø© Ø¨Ø§Ù„ØªÙØµÙŠÙ„...',
                          hintStyle: context.bodyMediumTextStyle.copyWith(
                            color: context.colors.textSecondary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: AppSpacing.xl.ah),

                    // Attachments
                    _buildLabel(context, 'Ø£Ø¶Ù ØµÙˆØ±Ø© ØªÙˆØ¶ÙŠØ­ÙŠØ© (Ø§Ø®ØªÙŠØ§Ø±ÙŠ)', darkGreen),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        // Add Button
                        Container(
                          width: 80.aw,
                          height: 80.aw,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                              color: Colors.lightGreen.withValues(alpha: 0.5),
                              style: BorderStyle.solid,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add_a_photo_outlined, color: darkGreen),
                              SizedBox(height: 4.ah),
                              Text(
                                'Ø¥Ø¶Ø§ÙØ©',
                                style: context.bodySmallTextStyle.copyWith(
                                  color: Colors.lightGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 12.aw),
                        // Mock Image Thumbnail
                        Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                width: 80.aw,
                                height: 80.aw,
                                color: Colors.blueGrey,
                                child: const Icon(Icons.image, color: Colors.white70),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(4.aw),
                              padding: EdgeInsets.all(2.aw),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.close, color: Colors.grey, size: 14.aw),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: AppSpacing.xxl.ah),

                    // Submit Button
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16.ah),
                      decoration: BoxDecoration(
                        color: darkGreen,
                        borderRadius: BorderRadius.circular(32),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.send_outlined, color: Colors.white, size: 20.aw),
                          SizedBox(width: 8.aw),
                          Text(
                            'Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¨Ù„Ø§Øº',
                            style: context.titleMediumTextStyle.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSpacing.xl.ah),

              // Info Card
              Container(
                padding: EdgeInsets.all(AppSpacing.lg.aw),
                decoration: BoxDecoration(
                  color: darkGreen.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: darkGreen.withValues(alpha: 0.1)),
                ),
                child: Stack(
                  children: [
                    // Watermark
                    Positioned(
                      left: -20,
                      bottom: -20,
                      child: Icon(
                        Icons.check_circle,
                        size: 100.aw,
                        color: darkGreen.withValues(alpha: 0.05),
                      ),
                    ),
                    // Content
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'ÙƒÙŠÙ Ù†ØªØ¹Ø§Ù…Ù„ Ù…Ø¹ Ø¨Ù„Ø§ØºÙƒØŸ',
                              style: context.bodyLargeTextStyle.copyWith(
                                color: darkGreen,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 8.aw),
                            Container(
                              padding: EdgeInsets.all(6.aw),
                              decoration: BoxDecoration(
                                color: Colors.lightGreen.withValues(alpha: 0.2),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(Icons.info_outline, color: darkGreen, size: 20.aw),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSpacing.md.ah),
                        Text(
                          'Ø³ÙŠÙ‚ÙˆÙ… ÙØ±ÙŠÙ‚ Ø§Ù„Ø¯Ø¹Ù… Ø¨Ù…Ø±Ø§Ø¬Ø¹Ø© Ø§Ù„Ø¨Ù„Ø§Øº Ø®Ù„Ø§Ù„ 24 Ø³Ø§Ø¹Ø©. Ø³ÙŠØªÙ… Ø¥Ø®Ø·Ø§Ø±Ùƒ ÙÙˆØ± Ø§ØªØ®Ø§Ø° Ø£ÙŠ Ø¥Ø¬Ø±Ø§Ø¡ Ø¨Ø®ØµÙˆØµ Ù‡Ø°Ù‡ Ø§Ù„Ù…Ø´ÙƒÙ„Ø© Ø¹Ø¨Ø± Ø§Ù„Ø¥Ø´Ø¹Ø§Ø±Ø§Øª.',
                          textAlign: TextAlign.right,
                          style: context.bodyMediumTextStyle.copyWith(
                            color: context.colors.textSecondary,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100.ah), // Space for bottom nav simulation if needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLabel(BuildContext context, String text, Color darkGreen) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.ah),
      child: Text(
        text,
        style: context.bodyMediumTextStyle.copyWith(
          color: darkGreen,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}











