import 'package:expertgraphweb/global_export.dart';

class LogisticController extends GetxController {
  String? selectedBudget = '';
  String? selectedUrgency = '';
  String? selectedTiming = '';

  void budgetSelector(String v) {
    selectedBudget = v;
    update();
  }

  void urgencySelector(String v) {
    selectedUrgency = v;
    update();
  }

  void timingSelector(String v) {
    selectedTiming = v;
    update();
  }
}
