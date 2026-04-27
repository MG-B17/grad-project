import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import 'package:micromasr/features/passenger/auth/widgets/auth_app_bar.dart';
import 'package:micromasr/features/passenger/auth/widgets/otp_input_field.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _otpCode = '';
  bool _isLoading = false;

  Future<void> _handleVerify() async {
    if (_otpCode.length == 6) {
      setState(() {
        _isLoading = true;
      });

      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      if (mounted) {
        setState(() {
          _isLoading = false;
        });
        context.go(AppRouteConstants.passengerHome);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const PassengerAuthAppBar(title: AppStrings.confirmPhoneNumber),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const OtpHeader(),
              const VerticalSpace(60),
              const OtpIllustration(),
              const VerticalSpace(60),
              OtpInputField(
                length: 6,
                onCompleted: (code) => setState(() => _otpCode = code),
              ),
              const VerticalSpace(40),
              OtpTimer(onResend: () {}),
              const Spacer(),
              AppButton(
                label: AppStrings.confirm,
                isLoading: _isLoading,
                isDisabled: _otpCode.length < 6,
                onPressed: _handleVerify,
              ),
              const VerticalSpace(24),
            ],
          ),
        ),
      ),
    );
  }
}

class OtpHeader extends StatelessWidget {
  const OtpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'تأكيد رقم الهاتف',
          style: context.headlineLargeTextStyle.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colors.primary,
          ),
        ),
        SizedBox(height: 8.ah),
        Row(
          children: [
            Text(
              'بعتنالك كود على ',
              style: context.bodyLargeTextStyle.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
            Text(
              '+20 100 123 4567',
              style: context.bodyLargeTextStyle.copyWith(
                color: context.colors.onSurface,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8.aw),
            Icon(Icons.edit_outlined, size: 18.aw, color: context.colors.textSecondary),
          ],
        ),
      ],
    );
  }
}

class OtpIllustration extends StatelessWidget {
  const OtpIllustration({super.key});
  @override
  Widget build(BuildContext context) => const Center(child: Icon(Icons.mark_email_unread_outlined, size: 100));
}

class OtpTimer extends StatefulWidget {
  const OtpTimer({super.key, required this.onResend});
  final VoidCallback onResend;
  @override
  State<OtpTimer> createState() => _OtpTimerState();
}

class _OtpTimerState extends State<OtpTimer> {
  int _secondsRemaining = 45;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  String _formatTime(int seconds) {
    final minutes = (seconds / 60).floor();
    final remainingSeconds = seconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${remainingSeconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    if (_secondsRemaining == 0) {
      return TextButton(
        onPressed: () {
          setState(() => _secondsRemaining = 45);
          _startTimer();
          widget.onResend();
        },
        child: Text(
          'إعادة إرسال الكود',
          style: context.bodyLargeTextStyle.copyWith(
            color: context.colors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
    return Text(
      'إعادة إرسال الكود خلال ${_formatTime(_secondsRemaining)}',
      style: context.bodyMediumTextStyle.copyWith(
        color: context.colors.textSecondary,
      ),
    );
  }
}
