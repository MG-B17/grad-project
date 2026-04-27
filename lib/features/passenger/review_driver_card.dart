import 'package:flutter/material.dart';
import 'package:micromasr/core/app_strings.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'rating_stars.dart';
import 'feedback_tags.dart';

class ReviewDriverCard extends StatelessWidget {
  const ReviewDriverCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(color: context.colors.surface, borderRadius: BorderRadius.circular(24), boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 10)]),
      child: Column(
        children: [
          const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
          const VerticalSpace(12),
          Text('Ø£Ø­Ù…Ø¯ Ù…Ø­Ù…Ø¯', style: context.titleLargeTextStyle.copyWith(fontWeight: FontWeight.bold)),
          Text('ØªÙˆÙŠÙˆØªØ§ Ù‡Ø§ÙŠØ³ - Ø£ Ø¨ Ø¬ 123', style: context.bodyMediumTextStyle.copyWith(color: context.colors.textSecondary)),
          const VerticalSpace(24),
          const RatingStars(),
          const VerticalSpace(24),
          Text(AppStrings.whatDidYouLike, style: context.titleMediumTextStyle.copyWith(fontWeight: FontWeight.bold)),
          const VerticalSpace(16),
          const FeedbackTags(),
          const VerticalSpace(24),
          _buildCommentBox(context),
        ],
      ),
    );
  }

  Widget _buildCommentBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: context.colors.background, borderRadius: BorderRadius.circular(16)),
      child: TextField(
        decoration: InputDecoration(hintText: 'Ø´Ø§Ø±ÙƒÙ†Ø§ Ø±Ø£ÙŠÙƒ...', hintStyle: context.bodyMediumTextStyle.copyWith(color: context.colors.textSecondary), border: InputBorder.none),
        maxLines: 3,
      ),
    );
  }
}











