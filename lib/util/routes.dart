import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/dashboard/view/dashboard.dart';
import 'package:expertgraphweb/pages/detail/view/detail.dart';
import 'package:expertgraphweb/pages/enquiry/view/enquiry.dart';
import 'package:expertgraphweb/pages/home/controller/home_controller.dart';
import 'package:expertgraphweb/pages/home/view/home_screen.dart';
import 'package:expertgraphweb/pages/logistic/view/logistic.dart';
import 'package:expertgraphweb/pages/service/view/service.dart';
import 'package:expertgraphweb/pages/signin/Controller/signin_controller.dart';
import 'package:expertgraphweb/pages/signin/view/signin.dart';
import 'package:expertgraphweb/pages/splash/controller/splash_controller.dart';
import 'package:expertgraphweb/pages/splash/view/splash_screen.dart';

class AppRoutes {
  static const String splash = '/splash';
  // static const String getStart = '/get_start';
  static const String appLanguage = '/app_language';
  // static const String onboard = '/onboard';
  static const String generateOTP = '/generateOTP';
  // static const String verifyOTP = '/verify_email';
  // static const String settings = '/settings';
  // static const String profile = '/profile';
  static const String home = '/home';
  static const String signin = '/auth';
  // static const String refer = '/refer';
  static const String dashboard = '/dashboard';
  static const String service = '/service';
  static const String enquiry = '/enquiry';
  static const String logistic = '/logistic';
  static const String detail = '/detail';
  // static const String about = '/about';
  // static const String wallet = '/wallet';
  // static const String privacy = '/privacy';
  // static const String term = '/term';
  // static const String faq = '/faq';
  // static const String referralHistory = '/referral_history';
  // static const String feedBack = '/feed_back';
  // static const String feed = '/feed';
  // static const String resetPassword = '/reset_password';
  // static const String declaration = '/declaration';
  // static const String quiz = '/quiz';
  // static const String complete = '/complete';
  // static const String result = '/result';
  // static const String updateProfile = '/updateProfile';
  // static const String webPage = '/webPage';

  static List<GetPage> appRoutes = [
    GetPage(
      name: splash,
      binding: BindingsBuilder(() => Get.lazyPut(() => SplashController())),
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: signin,
      binding: BindingsBuilder(() => Get.lazyPut(() => SigninController())),
      page: () => const SigninScreen(),
    ),
    GetPage(
      name: dashboard,
      // binding: BindingsBuilder(() => Get.lazyPut(() => DashboardController())),
      page: () => const DashboardScreen(),
    ),
    GetPage(
      name: home,
      binding: BindingsBuilder(() => Get.lazyPut(() => HomeController())),
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: service,
      // binding: BindingsBuilder(() => Get.lazyPut(() => HomeController())),
      page: () => const ServiceFormScreen(),
    ),
    // GetPage(name: appLanguage, page: () => const AppLanguage()),
    GetPage(
      name: enquiry,
      // binding: BindingsBuilder(() => Get.lazyPut(() => RegisterController())),
      page: () => const EnquiryScreen(),
    ),
    GetPage(
      name: logistic,
      // binding: BindingsBuilder(() => Get.lazyPut(() => VerifyController())),
      page: () => const LogisticsScreen(),
    ),
    GetPage(
      name: detail,
      // binding: BindingsBuilder(() => Get.lazyPut(() => ProfileController())),
      page: () => const EnquiryDetailsScreen(),
    ),
    // GetPage(
    //     name: dashboard,
    //     binding:
    //     BindingsBuilder(() => Get.lazyPut(() => DashboardController())),
    //     page: () => const DashboardPage()),
    // GetPage(name: about, page: () => const AboutPage()),
    // GetPage(name: privacy, page: () => const PrivacyPage()),
    // GetPage(name: term, page: () => const TermPage()),
    // GetPage(name: webPage, page: () => const WebPage()),
    // GetPage(
    //     name: faq,
    //     binding: BindingsBuilder(() => Get.lazyPut(() => FAQController())),
    //     page: () => const FAQPage()),
    // GetPage(name: referralHistory, page: () => const ReferralHistory()),
    // GetPage(name: referralHistory, page: () => const WebPage()),
    // GetPage(
    //     name: feed,
    //     binding: BindingsBuilder(() => Get.lazyPut(() => FeedBackController())),
    //     page: () => const FeedPage()),
    // GetPage(
    //     name: feedBack,
    //     binding: BindingsBuilder(() => Get.lazyPut(() => FeedBackController())),
    //     page: () => const FeedBackPage()),
    // GetPage(name: complete, page: () => const CompletePage()),
    // GetPage(name: declaration, page: () => const DeclarationPage()),
    // GetPage(
    //     name: quiz,
    //     binding: BindingsBuilder(() => Get.lazyPut(() => QuizController())),
    //     page: () => const QuizPage()),
    // GetPage(name: result, page: () => const ResultPage()),
    // GetPage(
    //     name: updateProfile,
    //     binding: BindingsBuilder(() => Get.lazyPut(() => ProfileController())),
    //     page: () => const UpdateProfilePage())
  ];
}
