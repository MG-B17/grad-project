import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/context_extensions.dart';
import 'package:micromasr/core/app_route_constant.dart';
import 'package:micromasr/core/app_page_indicator.dart';
import 'package:micromasr/core/vertical_space.dart';
import 'onboarding_navigation.dart';
import 'onboarding_page_view.dart';

class OnboardingData {
  final String title;
  final String subtitle;
  final String image;

  OnboardingData({
    required this.title,
    required this.subtitle,
    required this.image,
  });

  static List<OnboardingData> get passengerPages => [
    OnboardingData(
      title: 'Ù…Ø±Ø­Ø¨Ø§Ù‹ Ø¨Ùƒ ÙÙŠ Ù…ÙŠÙƒØ±Ùˆ Ù…ØµØ±',
      subtitle: 'Ø£Ø³Ù‡Ù„ Ø·Ø±ÙŠÙ‚Ø© Ù„Ù„ØªÙ†Ù‚Ù„ ÙÙŠ Ù…ØµØ± Ø¨Ø§Ù„Ù…ÙŠÙƒØ±ÙˆØ¨Ø§Øµ',
      image: 'assets/images/onboarding1.svg',
    ),
    OnboardingData(
      title: 'Ø§Ø­Ø¬Ø² Ù…Ù‚Ø¹Ø¯Ùƒ',
      subtitle: 'Ø§Ø®ØªØ± Ø±Ø­Ù„ØªÙƒ ÙˆØ§Ø­Ø¬Ø² Ù…Ù‚Ø¹Ø¯Ùƒ Ù…Ø³Ø¨Ù‚Ø§Ù‹ Ø¨ÙƒÙ„ Ø³Ù‡ÙˆÙ„Ø©',
      image: 'assets/images/onboarding2.svg',
    ),
    OnboardingData(
      title: 'ØªØªØ¨Ø¹ Ø±Ø­Ù„ØªÙƒ',
      subtitle: 'ØªØ§Ø¨Ø¹ Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ù…ÙŠÙƒØ±ÙˆØ¨Ø§Øµ Ù„Ø­Ø¸Ø© Ø¨Ù„Ø­Ø¸Ø©',
      image: 'assets/images/onboarding3.svg',
    ),
  ];
}

class PassengerOnboardingScreen extends StatefulWidget {
  const PassengerOnboardingScreen({super.key});

  @override
  State<PassengerOnboardingScreen> createState() => _PassengerOnboardingScreenState();
}

class _PassengerOnboardingScreenState extends State<PassengerOnboardingScreen> {
  final PageController _pageController = PageController();
  final List<OnboardingData> _pages = OnboardingData.passengerPages;
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onNext() {
    if (_currentPage < _pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      context.go(AppRouteConstants.passengerLogin);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: _pages.length,
                itemBuilder: (context, index) => PassengerOnboardingPageView(data: _pages[index]),
              ),
            ),
            AppPageIndicator(controller: _pageController, count: _pages.length),
            const VerticalSpace(40),
            OnboardingNavigation(
              currentPage: _currentPage,
              totalPages: _pages.length,
              onNext: _onNext,
            ),
          ],
        ),
      ),
    );
  }
}












