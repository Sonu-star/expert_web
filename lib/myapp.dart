import 'package:expertgraphweb/localization/languages.dart';
import 'global_export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp.router(
    enableLog: true,
    defaultTransition: Transition.noTransition,
    title: 'SONU SINGH PARIHAR',
    translations: AppLocalization(),
    locale: getLocalization(),
    fallbackLocale: const Locale('en', 'EN'),
    debugShowCheckedModeBanner: false,
    getPages: AppRoutes.appRoutes,
    routerDelegate: GetDelegate(),
    routeInformationParser: GetInformationParser(
      initialRoute: AppRoutes.splash,
    ),

    // optional but useful
    backButtonDispatcher: RootBackButtonDispatcher(),
  );
}
