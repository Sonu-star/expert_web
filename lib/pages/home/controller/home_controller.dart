import 'package:expertgraphweb/global_export.dart';

class HomeController extends GetxController {
  GlobalKey expertiseKey = GlobalKey();
  GlobalKey howKey = GlobalKey();
  GlobalKey trustKey = GlobalKey();
  GlobalKey currentKey = GlobalKey();

  ScrollController scrollController = ScrollController();

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  void scrollToSection(GlobalKey key) {
    currentKey = key;
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
    update();
  }
}
