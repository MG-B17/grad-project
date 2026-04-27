import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';

// ignore_for_file: type=lint

// Callers can lookup localized strings with an instance of AppLocalizations
// returned by `AppLocalizations.of(context)`.
//
// Applications need to include `AppLocalizations.delegate()` in their app's
// `localizationDelegates` list, and the locales they support in the app's
// `supportedLocales` list. For example:
//
// ```dart
// import 'l10n/app_localizations.dart';
//
// return MaterialApp(
//   localizationsDelegates: AppLocalizations.localizationsDelegates,
//   supportedLocales: AppLocalizations.supportedLocales,
//   home: MyApplicationHome(),
// );
// ```
//
// ## Update pubspec.yaml
//
// Please make sure to update your pubspec.yaml to include the following
// packages:
//
// ```yaml
// dependencies:
//   # Internationalization support.
//   flutter_localizations:
//     sdk: flutter
//   intl: any # Use the pinned version from flutter_localizations
//
//   # Rest of dependencies
// ```
//
// ## iOS Applications
//
// iOS applications define key application metadata, including supported
// locales, in an Info.plist file that is built into the application bundle.
// To configure the locales supported by your app, youÃ¢â‚¬â„¢ll need to edit this
// file.
//
// First, open your projectÃ¢â‚¬â„¢s ios/Runner.xcworkspace Xcode workspace file.
// Then, in the Project Navigator, open the Info.plist file under the Runner
// projectÃ¢â‚¬â„¢s Runner folder.
//
// Next, select the Information Property List item, select Add Item from the
// Editor menu, then select Localizations from the pop-up menu.
//
// Select and expand the newly-created Localizations item then, for each
// locale your application supports, add a new item and select the locale
// you wish to add from the pop-up menu in the Value field. This list should
// be consistent with the languages listed in the AppLocalizations.supportedLocales
// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  // A list of this localizations delegate along with the default localizations
  // delegates.
  //
  // Returns a list of localizations delegates containing this delegate along with
  // GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  // and GlobalWidgetsLocalizations.delegate.
  //
  // Additional delegates can be added by appending to this list in
  // MaterialApp. This list does not have to be used at all if a custom list
  // of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  // A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ar')];

  // No description provided for @appName.
  //
  // In ar, this message translates to:
  // **'Ã™â€¦Ã™Å Ã™Æ’Ã˜Â±Ã™Ë† Ã™â€¦Ã˜ÂµÃ˜Â±'**
  String get appName;

  // No description provided for @next.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€žÃ˜ÂªÃ˜Â§Ã™â€žÃ™Å '**
  String get next;

  // No description provided for @back.
  //
  // In ar, this message translates to:
  // **'Ã˜Â±Ã˜Â¬Ã™Ë†Ã˜Â¹'**
  String get back;

  // No description provided for @skip.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ˜Â®Ã˜Â·Ã™â€°'**
  String get skip;

  // No description provided for @start.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â¨Ã˜Â¯Ã˜Â£'**
  String get start;

  // No description provided for @confirm.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ˜Â£Ã™Æ’Ã™Å Ã˜Â¯'**
  String get confirm;

  // No description provided for @cancel.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¥Ã™â€žÃ˜ÂºÃ˜Â§Ã˜Â¡'**
  String get cancel;

  // No description provided for @save.
  //
  // In ar, this message translates to:
  // **'Ã˜Â­Ã™ÂÃ˜Â¸'**
  String get save;

  // No description provided for @retry.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¥Ã˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â­Ã˜Â§Ã™Ë†Ã™â€žÃ˜Â©'**
  String get retry;

  // No description provided for @logout.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ˜Â³Ã˜Â¬Ã™Å Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â®Ã˜Â±Ã™Ë†Ã˜Â¬'**
  String get logout;

  // No description provided for @loading.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¬Ã˜Â§Ã˜Â±Ã™Å  Ã˜Â§Ã™â€žÃ˜ÂªÃ˜Â­Ã™â€¦Ã™Å Ã™â€ž...'**
  String get loading;

  // No description provided for @passenger.
  //
  // In ar, this message translates to:
  // **'Ã˜Â±Ã˜Â§Ã™Æ’Ã˜Â¨'**
  String get passenger;

  // No description provided for @driver.
  //
  // In ar, this message translates to:
  // **'Ã˜Â³Ã˜Â§Ã˜Â¦Ã™â€š'**
  String get driver;

  // No description provided for @selectRole.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â®Ã˜ÂªÃ˜Â§Ã˜Â± Ã˜Â¯Ã™Ë†Ã˜Â±Ã™Æ’'**
  String get selectRole;

  // No description provided for @signIn.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ˜Â³Ã˜Â¬Ã™Å Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â¯Ã˜Â®Ã™Ë†Ã™â€ž'**
  String get signIn;

  // No description provided for @signUp.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¥Ã™â€ Ã˜Â´Ã˜Â§Ã˜Â¡ Ã˜Â­Ã˜Â³Ã˜Â§Ã˜Â¨'**
  String get signUp;

  // No description provided for @phoneNumber.
  //
  // In ar, this message translates to:
  // **'Ã˜Â±Ã™â€šÃ™â€¦ Ã˜Â§Ã™â€žÃ™â€¡Ã˜Â§Ã˜ÂªÃ™Â'**
  String get phoneNumber;

  // No description provided for @password.
  //
  // In ar, this message translates to:
  // **'Ã™Æ’Ã™â€žÃ™â€¦Ã˜Â© Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â±Ã™Ë†Ã˜Â±'**
  String get password;

  // No description provided for @fullName.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€žÃ˜Â§Ã˜Â³Ã™â€¦ Ã˜Â¨Ã˜Â§Ã™â€žÃ™Æ’Ã˜Â§Ã™â€¦Ã™â€ž'**
  String get fullName;

  // No description provided for @email.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€žÃ˜Â¨Ã˜Â±Ã™Å Ã˜Â¯ Ã˜Â§Ã™â€žÃ˜Â¥Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â±Ã™Ë†Ã™â€ Ã™Å '**
  String get email;

  // No description provided for @otpVerification.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€žÃ˜ÂªÃ˜Â­Ã™â€šÃ™â€š Ã™â€¦Ã™â€  Ã˜Â§Ã™â€žÃ˜Â±Ã™â€¦Ã˜Â²'**
  String get otpVerification;

  // No description provided for @resendCode.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¥Ã˜Â¹Ã˜Â§Ã˜Â¯Ã˜Â© Ã˜Â¥Ã˜Â±Ã˜Â³Ã˜Â§Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â±Ã™â€¦Ã˜Â²'**
  String get resendCode;

  // No description provided for @onboarding1Title.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ˜ÂªÃ˜Â¨Ã˜Â¹ Ã™ÂÃ™Å  Ã˜Â§Ã™â€žÃ™Ë†Ã™â€šÃ˜Âª Ã˜Â§Ã™â€žÃ˜Â­Ã™â€šÃ™Å Ã™â€šÃ™Å '**
  String get onboarding1Title;

  // No description provided for @onboarding1Subtitle.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â¹Ã˜Â±Ã™Â Ã™â€¦Ã™Æ’Ã˜Â§Ã™â€  Ã˜Â§Ã™â€žÃ™â€¦Ã™Å Ã™Æ’Ã˜Â±Ã™Ë†Ã˜Â¨Ã˜Â§Ã˜Âµ Ã™â€šÃ˜Â¨Ã™â€ž Ã™â€¦Ã˜Â§ Ã˜ÂªÃ™Ë†Ã˜ÂµÃ™â€ž'**
  String get onboarding1Subtitle;

  // No description provided for @onboarding2Title.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â­Ã˜Â¬Ã˜Â² Ã™â€¦Ã™â€šÃ˜Â¹Ã˜Â¯Ã™Æ’ Ã˜Â¨Ã˜Â³Ã™â€¡Ã™Ë†Ã™â€žÃ˜Â©'**
  String get onboarding2Title;

  // No description provided for @onboarding2Subtitle.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â­Ã˜Â¬Ã˜Â² Ã™â€¦Ã™â€  Ã™â€¦Ã™Ë†Ã˜Â¨Ã˜Â§Ã™Å Ã™â€žÃ™Æ’ Ã™ÂÃ™Å  Ã˜Â«Ã™Ë†Ã˜Â§Ã™â€ '**
  String get onboarding2Subtitle;

  // No description provided for @onboarding3Title.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â¯Ã™ÂÃ˜Â¹ Ã˜Â¨Ã˜Â£Ã™â€¦Ã˜Â§Ã™â€ '**
  String get onboarding3Title;

  // No description provided for @onboarding3Subtitle.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¯Ã™ÂÃ˜Â¹ Ã˜Â¥Ã™â€žÃ™Æ’Ã˜ÂªÃ˜Â±Ã™Ë†Ã™â€ Ã™Å  Ã˜Â³Ã˜Â±Ã™Å Ã˜Â¹ Ã™Ë†Ã˜Â¢Ã™â€¦Ã™â€ '**
  String get onboarding3Subtitle;

  // No description provided for @home.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€žÃ˜Â±Ã˜Â¦Ã™Å Ã˜Â³Ã™Å Ã˜Â©'**
  String get home;

  // No description provided for @trips.
  //
  // In ar, this message translates to:
  // **'Ã˜Â±Ã˜Â­Ã™â€žÃ˜Â§Ã˜ÂªÃ™Å '**
  String get trips;

  // No description provided for @notifications.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€žÃ˜Â¥Ã˜Â´Ã˜Â¹Ã˜Â§Ã˜Â±Ã˜Â§Ã˜Âª'**
  String get notifications;

  // No description provided for @profile.
  //
  // In ar, this message translates to:
  // **'Ã˜Â­Ã˜Â³Ã˜Â§Ã˜Â¨Ã™Å '**
  String get profile;

  // No description provided for @earnings.
  //
  // In ar, this message translates to:
  // **'Ã˜Â£Ã˜Â±Ã˜Â¨Ã˜Â§Ã˜Â­Ã™Å '**
  String get earnings;

  // No description provided for @availableRides.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€žÃ™â€¦Ã™Å Ã™Æ’Ã˜Â±Ã™Ë†Ã˜Â¨Ã˜Â§Ã˜ÂµÃ˜Â§Ã˜Âª Ã˜Â§Ã™â€žÃ™â€¦Ã˜ÂªÃ˜Â§Ã˜Â­Ã˜Â©'**
  String get availableRides;

  // No description provided for @bookNow.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â­Ã˜Â¬Ã˜Â²'**
  String get bookNow;

  // No description provided for @searchDestination.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã˜Â±Ã™Ë†Ã˜Â­ Ã™ÂÃ™Å Ã™â€ Ã˜Å¸'**
  String get searchDestination;

  // No description provided for @bookingConfirmed.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ™â€¦ Ã˜Â§Ã™â€žÃ˜Â­Ã˜Â¬Ã˜Â² Ã˜Â¨Ã™â€ Ã˜Â¬Ã˜Â§Ã˜Â­!'**
  String get bookingConfirmed;

  // No description provided for @trackNow.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ˜ÂªÃ˜Â¨Ã˜Â¹ Ã˜Â§Ã™â€žÃ˜Â¢Ã™â€ '**
  String get trackNow;

  // No description provided for @online.
  //
  // In ar, this message translates to:
  // **'Ã™â€¦Ã˜ÂªÃ˜Â§Ã˜Â­'**
  String get online;

  // No description provided for @offline.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂºÃ™Å Ã˜Â± Ã™â€¦Ã˜ÂªÃ˜Â§Ã˜Â­'**
  String get offline;

  // No description provided for @accept.
  //
  // In ar, this message translates to:
  // **'Ã™â€šÃ˜Â¨Ã™Ë†Ã™â€ž'**
  String get accept;

  // No description provided for @decline.
  //
  // In ar, this message translates to:
  // **'Ã˜Â±Ã™ÂÃ˜Â¶'**
  String get decline;

  // No description provided for @completeTrip.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¥Ã™â€ Ã™â€¡Ã˜Â§Ã˜Â¡ Ã˜Â§Ã™â€žÃ˜Â±Ã˜Â­Ã™â€žÃ˜Â©'**
  String get completeTrip;

  // No description provided for @pendingVerification.
  //
  // In ar, this message translates to:
  // **'Ã˜Â¬Ã˜Â§Ã˜Â±Ã™Å  Ã™â€¦Ã˜Â±Ã˜Â§Ã˜Â¬Ã˜Â¹Ã˜Â© Ã˜Â¨Ã™Å Ã˜Â§Ã™â€ Ã˜Â§Ã˜ÂªÃ™Æ’'**
  String get pendingVerification;

  // No description provided for @pendingVerificationBody.
  //
  // In ar, this message translates to:
  // **'Ã˜Â³Ã™Å Ã˜ÂªÃ™â€¦ Ã˜Â¥Ã˜Â®Ã˜Â·Ã˜Â§Ã˜Â±Ã™Æ’ Ã™ÂÃ™Ë†Ã˜Â± Ã˜Â§Ã™â€žÃ™â€¦Ã™Ë†Ã˜Â§Ã™ÂÃ™â€šÃ˜Â© Ã˜Â¹Ã™â€žÃ™â€° Ã˜Â­Ã˜Â³Ã˜Â§Ã˜Â¨Ã™Æ’'**
  String get pendingVerificationBody;

  // No description provided for @genericError.
  //
  // In ar, this message translates to:
  // **'Ã˜Â­Ã˜Â¯Ã˜Â« Ã˜Â®Ã˜Â·Ã˜Â£Ã˜Å’ Ã™Å Ã˜Â±Ã˜Â¬Ã™â€° Ã˜Â§Ã™â€žÃ™â€¦Ã˜Â­Ã˜Â§Ã™Ë†Ã™â€žÃ˜Â© Ã™â€¦Ã˜Â±Ã˜Â© Ã˜Â£Ã˜Â®Ã˜Â±Ã™â€°'**
  String get genericError;

  // No description provided for @networkError.
  //
  // In ar, this message translates to:
  // **'Ã˜ÂªÃ˜Â­Ã™â€šÃ™â€š Ã™â€¦Ã™â€  Ã˜Â§Ã˜ÂªÃ˜ÂµÃ˜Â§Ã™â€žÃ™Æ’ Ã˜Â¨Ã˜Â§Ã™â€žÃ˜Â¥Ã™â€ Ã˜ÂªÃ˜Â±Ã™â€ Ã˜Âª'**
  String get networkError;

  // No description provided for @noRidesAvailable.
  //
  // In ar, this message translates to:
  // **'Ã™â€¦Ã™ÂÃ™Å Ã˜Â´ Ã™â€¦Ã™Å Ã™Æ’Ã˜Â±Ã™Ë†Ã˜Â¨Ã˜Â§Ã˜ÂµÃ˜Â§Ã˜Âª Ã™â€¦Ã˜ÂªÃ˜Â§Ã˜Â­Ã˜Â© Ã˜Â¯Ã™â€žÃ™Ë†Ã™â€šÃ˜ÂªÃ™Å '**
  String get noRidesAvailable;

  // No description provided for @noTripHistory.
  //
  // In ar, this message translates to:
  // **'Ã™â€¦Ã˜Â³Ã˜Â§Ã™ÂÃ˜Â±Ã˜ÂªÃ˜Â´ Ã™â€šÃ˜Â¨Ã™â€ž Ã™Æ’Ã˜Â¯Ã˜Â©'**
  String get noTripHistory;

  // No description provided for @noNotifications.
  //
  // In ar, this message translates to:
  // **'Ã™â€¦Ã™ÂÃ™Å Ã˜Â´ Ã˜Â¥Ã˜Â´Ã˜Â¹Ã˜Â§Ã˜Â±Ã˜Â§Ã˜Âª'**
  String get noNotifications;

  // No description provided for @noEarningsToday.
  //
  // In ar, this message translates to:
  // **'Ã™â€¦Ã™ÂÃ™Å Ã˜Â´ Ã˜Â±Ã˜Â­Ã™â€žÃ˜Â§Ã˜Âª Ã˜Â§Ã™â€žÃ™â€ Ã™â€¡Ã˜Â§Ã˜Â±Ã˜Â¯Ã™â€¡'**
  String get noEarningsToday;

  // No description provided for @sessionExpired.
  //
  // In ar, this message translates to:
  // **'Ã˜Â§Ã™â€ Ã˜ÂªÃ™â€¡Ã˜Âª Ã˜Â¬Ã™â€žÃ˜Â³Ã˜ÂªÃ™Æ’Ã˜Å’ Ã˜Â³Ã˜Â¬Ã™â€ž Ã˜Â§Ã™â€žÃ˜Â¯Ã˜Â®Ã™Ë†Ã™â€ž Ã™â€¦Ã˜Â±Ã˜Â© Ã˜Â£Ã˜Â®Ã˜Â±Ã™â€°'**
  String get sessionExpired;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}














