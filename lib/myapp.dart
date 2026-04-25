import 'package:expertgraphweb/localization/languages.dart';
import 'global_export.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    enableLog: true,
    defaultTransition: Transition.noTransition,
    title: 'SONU SINGH PARIHAR',
    translations: AppLocalization(),
    locale: getLocalization(),
    fallbackLocale: const Locale('en', 'EN'),
    debugShowCheckedModeBanner: false,
    getPages: AppRoutes.appRoutes,
    initialRoute: AppRoutes.splash,
  );
}
