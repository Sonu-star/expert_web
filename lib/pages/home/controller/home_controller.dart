import 'package:expertgraphweb/global_export.dart';

class HomeController extends GetxController {
  GlobalKey homeKey = GlobalKey();
  GlobalKey aboutKey = GlobalKey();
  GlobalKey resumeKey = GlobalKey();
  GlobalKey portfolioKey = GlobalKey();
  GlobalKey certificateKey = GlobalKey();
  GlobalKey contactKey = GlobalKey();
  GlobalKey currentKey = GlobalKey();

  String selected = 'Flutter';

  ScrollController scrollController = ScrollController();

  bool showText = false;

  @override
  void onInit() {
    getSize();
    super.onInit();
  }

  void getSize() {
    scrollController.addListener(() {
      double height = Get.height / 1.4;
      if (scrollController.offset > height && !showText) {
        showText = true;
      } else if (scrollController.offset < height && showText) {
        showText = false;
      }
      update();
    });
  }

  void selector(String value) {
    selected = value;
    update();
  }

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
  }
}
