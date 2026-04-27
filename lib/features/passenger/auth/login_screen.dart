import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/extensions/context_extensions.dart';
import 'package:micromasr/core/extensions/size_extensions.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/app_button.dart';
import 'package:micromasr/core/widgets/app_text_field.dart';
import 'package:micromasr/core/utils/validation_utils.dart';
import 'package:micromasr/core/widgets/vertical_space.dart';
import 'package:micromasr/features/passenger/auth/widgets/login_header.dart';
import 'package:micromasr/features/passenger/auth/widgets/auth_divider.dart';
import 'package:micromasr/features/passenger/auth/widgets/social_sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            LoginHeader(),
            Padding(
              padding: EdgeInsets.all(24),
              child: LoginBody(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(24.aw),
          decoration: BoxDecoration(
            color: context.colors.surface,
            borderRadius: BorderRadius.circular(24.aw),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.signInTitle,
                style: context.headlineMediumTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colors.primary,
                ),
              ),
              const VerticalSpace(24),
              const LoginForm(),
              const VerticalSpace(32),
              const PassengerAuthDivider(text: 'أو'),
              const VerticalSpace(24),
              SocialSignInButton(
                label: AppStrings.continueWithGoogle,
                onPressed: () {},
              ),
            ],
          ),
        ),
        const VerticalSpace(24),
        _buildSkipButton(context),
        const VerticalSpace(32),
        _buildSignUpLink(context),
      ],
    );
  }

  Widget _buildSkipButton(BuildContext context) {
    return TextButton(
      onPressed: () => context.go(AppRouteConstants.passengerHome),
      child: Text(
        AppStrings.skipAndGuest,
        style: context.bodyLargeTextStyle.copyWith(
          color: context.colors.primary,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }

  Widget _buildSignUpLink(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppStrings.dontHaveAccount,
          style: context.bodyLargeTextStyle.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        GestureDetector(
          onTap: () => context.push(AppRouteConstants.passengerRegister),
          child: Text(
            AppStrings.signUp,
            style: context.bodyLargeTextStyle.copyWith(
              color: const Color(0xFFF09063),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _identifierController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;
  bool _isLoading = false;

  @override
  void dispose() {
    _identifierController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState!.validate()) {
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
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            label: AppStrings.loginIdentifier,
            controller: _identifierController,
            prefixIcon: Icon(Icons.person_outline, color: context.colors.textSecondary),
            validator: (value) => ValidationUtils.validateRequired(value),
          ),
          const VerticalSpace(16),
          AppTextField(
            label: AppStrings.password,
            controller: _passwordController,
            obscureText: _obscurePassword,
            prefixIcon: Icon(Icons.lock_outline, color: context.colors.textSecondary),
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                color: context.colors.textSecondary,
              ),
              onPressed: () => setState(() => _obscurePassword = !_obscurePassword),
            ),
            validator: ValidationUtils.validatePassword,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {},
              child: Text(
                AppStrings.forgotPassword,
                style: context.bodyMediumTextStyle.copyWith(
                  color: const Color(0xFFF09063),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const VerticalSpace(24),
          AppButton(
            label: AppStrings.signIn,
            isLoading: _isLoading,
            onPressed: _handleLogin,
          ),
        ],
      ),
    );
  }
}
