import 'package:expertgraphweb/global_export.dart';

import 'en_us/en_us_translations.dart';
import 'hi_in/hi_in_translations.dart';
import 'mr_in/mr_in_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en': en, 'hi': hi, 'mr': mrIn};
}
