import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:micromasr/core/constants/app_strings.dart';
import 'package:micromasr/core/routing/app_route_constant.dart';
import 'package:micromasr/core/widgets/placeholder_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/language_screen.dart';
import 'package:micromasr/features/splash/presentation/screens/splash_screen.dart';

// Passenger Imports
import 'package:micromasr/features/passenger/auth/login/presentation/screens/login_screen.dart';
import 'package:micromasr/features/passenger/auth/register/presentation/screens/register_screen.dart';
import 'package:micromasr/features/passenger/auth/otp_verify/presentation/screens/otp_screen.dart';
import 'package:micromasr/features/passenger/passenger_onboarding/presentation/screens/onboarding_screen.dart';
import 'package:micromasr/features/passenger/presentation/screens/passenger_shell.dart';
import 'package:micromasr/features/passenger/home/presentation/screens/home_screen.dart';
import 'package:micromasr/features/passenger/booking/presentation/screens/booking_confirm_screen.dart';
import 'package:micromasr/features/passenger/payment/presentation/screens/payment_methods_screen.dart';
import 'package:micromasr/features/passenger/payment/presentation/screens/payment_success_screen.dart';
import 'package:micromasr/features/passenger/tracking/presentation/screens/tracking_screen.dart';
import 'package:micromasr/features/passenger/review/presentation/screens/trip_review_screen.dart';
import 'package:micromasr/features/passenger/search/presentation/screens/search_screen.dart';
import 'package:micromasr/features/passenger/rides/presentation/screens/rides_screen.dart';
import 'package:micromasr/features/passenger/trip_detail/presentation/screens/trip_detail_screen.dart';
import 'package:micromasr/features/passenger/seat_selection/presentation/screens/seat_selection_screen.dart';
import 'package:micromasr/features/passenger/notifications/presentation/screens/notifications_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/passenger_profile_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/personal_info_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/saved_places_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/coupons_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/notification_settings_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/help_center_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/report_problem_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/payment_methods_screen.dart';
import 'package:micromasr/features/passenger/profile/presentation/screens/contact_us_screen.dart';

// Driver Imports
import 'package:micromasr/features/driver/core/presentation/screens/driver_flow_screen.dart';
import 'package:micromasr/features/driver/earnings/presentation/screens/driver_earnings_screen.dart';
import 'package:micromasr/features/driver/pending_verification/presentation/screens/pending_verification_screen.dart';
import 'package:micromasr/features/driver/profile/presentation/screens/driver_profile_screen.dart';
import 'package:micromasr/features/driver/register_documents/presentation/screens/register_documents_screen.dart';
import 'package:micromasr/features/driver/register_payout/presentation/screens/register_payout_screen.dart';
import 'package:micromasr/features/driver/register_personal/presentation/screens/register_personal_screen.dart';
import 'package:micromasr/features/driver/register_vehicle/presentation/screens/register_vehicle_screen.dart';
import 'package:micromasr/features/driver/driver_onboarding/presentation/screens/driver_onboarding_screen.dart';

// Role Toggle
import 'package:micromasr/features/role_toggle/presentation/screens/role_toggle_screen.dart';

class AppRouter {
  const AppRouter._();

  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: AppRouteConstants.splash,
    routes: [
      GoRoute(
        path: AppRouteConstants.splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.toggle,
        builder: (context, state) => const RoleToggleScreen(),
      ),

      // --- Passenger Routes ---
      GoRoute(
        path: AppRouteConstants.passengarOnboarding,
        builder: (context, state) => const PassengerOnboardingScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerLogin,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerRegister,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerOtp,
        builder: (context, state) => const OtpScreen(),
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => PassengerShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteConstants.passengerHome,
                builder: (context, state) => const HomeScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteConstants.passengerRides,
                builder: (context, state) => const RidesScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteConstants.passengerNotifications,
                builder: (context, state) => const NotificationsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRouteConstants.passengerProfile,
                builder: (context, state) => const PassengerProfileScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.personalInfo,
                builder: (context, state) => const PersonalInfoScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.savedPlaces,
                builder: (context, state) => const SavedPlacesScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.paymentMethods,
                builder: (context, state) => const ProfilePaymentMethodsScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.coupons,
                builder: (context, state) => const CouponsScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.notificationSettings,
                builder: (context, state) => const NotificationSettingsScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.helpCenter,
                builder: (context, state) => const HelpCenterScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.reportProblem,
                builder: (context, state) => const ReportProblemScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.contactUs,
                builder: (context, state) => const ContactUsScreen(),
              ),
              GoRoute(
                path: AppRouteConstants.language,
                builder: (context, state) => const LanguageScreen(),
              ),
            ],
          ),
        ],
      ),

      GoRoute(
        path: AppRouteConstants.passengerSearch,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerTripDetail,
        builder: (context, state) => const TripDetailScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerSeats,
        builder: (context, state) => const SeatSelectionScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerBookingConfirm,
        builder: (context, state) => const BookingConfirmScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerPayment,
        builder: (context, state) => const PaymentMethodsScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerPaymentSuccess,
        builder: (context, state) => const PaymentSuccessScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerTracking,
        builder: (context, state) => const TrackingScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.passengerReview,
        builder: (context, state) => const TripReviewScreen(),
      ),

      // --- Driver Routes ---
      GoRoute(
        path: AppRouteConstants.driverOnboarding,
        builder: (context, state) => const DriverOnboardingScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverLogin,
        builder: (context, state) => const PlaceholderScreen(title: 'Driver Login'),
      ),
      GoRoute(
        path: AppRouteConstants.driverOtp,
        builder: (context, state) => const PlaceholderScreen(title: 'Driver OTP'),
      ),
      GoRoute(
        path: AppRouteConstants.driverRegisterPersonal,
        builder: (context, state) => const RegisterPersonalScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverRegisterVehicle,
        builder: (context, state) => const RegisterVehicleScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverRegisterDocuments,
        builder: (context, state) => const RegisterDocumentsScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverRegisterPayment,
        builder: (context, state) => const RegisterPayoutScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverPending,
        builder: (context, state) => const PendingVerificationScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverHome,
        builder: (context, state) => const DriverFlowScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverEarnings,
        builder: (context, state) => const DriverEarningsScreen(),
      ),
      GoRoute(
        path: AppRouteConstants.driverProfile,
        builder: (context, state) => const DriverProfileScreen(),
      ),

    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text(
          '${AppStrings.genericError}: ${state.error}',
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}
