import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ar')];

  /// No description provided for @appName.
  ///
  /// In ar, this message translates to:
  /// **'ميكرو مصر'**
  String get appName;

  /// No description provided for @next.
  ///
  /// In ar, this message translates to:
  /// **'التالي'**
  String get next;

  /// No description provided for @back.
  ///
  /// In ar, this message translates to:
  /// **'رجوع'**
  String get back;

  /// No description provided for @skip.
  ///
  /// In ar, this message translates to:
  /// **'تخطى'**
  String get skip;

  /// No description provided for @start.
  ///
  /// In ar, this message translates to:
  /// **'ابدأ'**
  String get start;

  /// No description provided for @confirm.
  ///
  /// In ar, this message translates to:
  /// **'تأكيد'**
  String get confirm;

  /// No description provided for @cancel.
  ///
  /// In ar, this message translates to:
  /// **'إلغاء'**
  String get cancel;

  /// No description provided for @save.
  ///
  /// In ar, this message translates to:
  /// **'حفظ'**
  String get save;

  /// No description provided for @retry.
  ///
  /// In ar, this message translates to:
  /// **'إعادة المحاولة'**
  String get retry;

  /// No description provided for @logout.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الخروج'**
  String get logout;

  /// No description provided for @loading.
  ///
  /// In ar, this message translates to:
  /// **'جاري التحميل...'**
  String get loading;

  /// No description provided for @passenger.
  ///
  /// In ar, this message translates to:
  /// **'راكب'**
  String get passenger;

  /// No description provided for @driver.
  ///
  /// In ar, this message translates to:
  /// **'سائق'**
  String get driver;

  /// No description provided for @selectRole.
  ///
  /// In ar, this message translates to:
  /// **'اختار دورك'**
  String get selectRole;

  /// No description provided for @signIn.
  ///
  /// In ar, this message translates to:
  /// **'تسجيل الدخول'**
  String get signIn;

  /// No description provided for @signUp.
  ///
  /// In ar, this message translates to:
  /// **'إنشاء حساب'**
  String get signUp;

  /// No description provided for @phoneNumber.
  ///
  /// In ar, this message translates to:
  /// **'رقم الهاتف'**
  String get phoneNumber;

  /// No description provided for @password.
  ///
  /// In ar, this message translates to:
  /// **'كلمة المرور'**
  String get password;

  /// No description provided for @fullName.
  ///
  /// In ar, this message translates to:
  /// **'الاسم بالكامل'**
  String get fullName;

  /// No description provided for @email.
  ///
  /// In ar, this message translates to:
  /// **'البريد الإلكتروني'**
  String get email;

  /// No description provided for @otpVerification.
  ///
  /// In ar, this message translates to:
  /// **'التحقق من الرمز'**
  String get otpVerification;

  /// No description provided for @resendCode.
  ///
  /// In ar, this message translates to:
  /// **'إعادة إرسال الرمز'**
  String get resendCode;

  /// No description provided for @onboarding1Title.
  ///
  /// In ar, this message translates to:
  /// **'تتبع في الوقت الحقيقي'**
  String get onboarding1Title;

  /// No description provided for @onboarding1Subtitle.
  ///
  /// In ar, this message translates to:
  /// **'اعرف مكان الميكروباص قبل ما توصل'**
  String get onboarding1Subtitle;

  /// No description provided for @onboarding2Title.
  ///
  /// In ar, this message translates to:
  /// **'احجز مقعدك بسهولة'**
  String get onboarding2Title;

  /// No description provided for @onboarding2Subtitle.
  ///
  /// In ar, this message translates to:
  /// **'احجز من موبايلك في ثوان'**
  String get onboarding2Subtitle;

  /// No description provided for @onboarding3Title.
  ///
  /// In ar, this message translates to:
  /// **'ادفع بأمان'**
  String get onboarding3Title;

  /// No description provided for @onboarding3Subtitle.
  ///
  /// In ar, this message translates to:
  /// **'دفع إلكتروني سريع وآمن'**
  String get onboarding3Subtitle;

  /// No description provided for @home.
  ///
  /// In ar, this message translates to:
  /// **'الرئيسية'**
  String get home;

  /// No description provided for @trips.
  ///
  /// In ar, this message translates to:
  /// **'رحلاتي'**
  String get trips;

  /// No description provided for @notifications.
  ///
  /// In ar, this message translates to:
  /// **'الإشعارات'**
  String get notifications;

  /// No description provided for @profile.
  ///
  /// In ar, this message translates to:
  /// **'حسابي'**
  String get profile;

  /// No description provided for @earnings.
  ///
  /// In ar, this message translates to:
  /// **'أرباحي'**
  String get earnings;

  /// No description provided for @availableRides.
  ///
  /// In ar, this message translates to:
  /// **'الميكروباصات المتاحة'**
  String get availableRides;

  /// No description provided for @bookNow.
  ///
  /// In ar, this message translates to:
  /// **'احجز'**
  String get bookNow;

  /// No description provided for @searchDestination.
  ///
  /// In ar, this message translates to:
  /// **'اروح فين؟'**
  String get searchDestination;

  /// No description provided for @bookingConfirmed.
  ///
  /// In ar, this message translates to:
  /// **'تم الحجز بنجاح!'**
  String get bookingConfirmed;

  /// No description provided for @trackNow.
  ///
  /// In ar, this message translates to:
  /// **'تتبع الآن'**
  String get trackNow;

  /// No description provided for @online.
  ///
  /// In ar, this message translates to:
  /// **'متاح'**
  String get online;

  /// No description provided for @offline.
  ///
  /// In ar, this message translates to:
  /// **'غير متاح'**
  String get offline;

  /// No description provided for @accept.
  ///
  /// In ar, this message translates to:
  /// **'قبول'**
  String get accept;

  /// No description provided for @decline.
  ///
  /// In ar, this message translates to:
  /// **'رفض'**
  String get decline;

  /// No description provided for @completeTrip.
  ///
  /// In ar, this message translates to:
  /// **'إنهاء الرحلة'**
  String get completeTrip;

  /// No description provided for @pendingVerification.
  ///
  /// In ar, this message translates to:
  /// **'جاري مراجعة بياناتك'**
  String get pendingVerification;

  /// No description provided for @pendingVerificationBody.
  ///
  /// In ar, this message translates to:
  /// **'سيتم إخطارك فور الموافقة على حسابك'**
  String get pendingVerificationBody;

  /// No description provided for @genericError.
  ///
  /// In ar, this message translates to:
  /// **'حدث خطأ، يرجى المحاولة مرة أخرى'**
  String get genericError;

  /// No description provided for @networkError.
  ///
  /// In ar, this message translates to:
  /// **'تحقق من اتصالك بالإنترنت'**
  String get networkError;

  /// No description provided for @noRidesAvailable.
  ///
  /// In ar, this message translates to:
  /// **'مفيش ميكروباصات متاحة دلوقتي'**
  String get noRidesAvailable;

  /// No description provided for @noTripHistory.
  ///
  /// In ar, this message translates to:
  /// **'مسافرتش قبل كدة'**
  String get noTripHistory;

  /// No description provided for @noNotifications.
  ///
  /// In ar, this message translates to:
  /// **'مفيش إشعارات'**
  String get noNotifications;

  /// No description provided for @noEarningsToday.
  ///
  /// In ar, this message translates to:
  /// **'مفيش رحلات النهارده'**
  String get noEarningsToday;

  /// No description provided for @sessionExpired.
  ///
  /// In ar, this message translates to:
  /// **'انتهت جلستك، سجل الدخول مرة أخرى'**
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
