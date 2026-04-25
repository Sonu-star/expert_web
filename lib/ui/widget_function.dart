import 'package:expertgraphweb/global_export.dart';

double width(BuildContext context) => MediaQuery.of(context).size.width;

double height(BuildContext context) => MediaQuery.of(context).size.height;

Widget addVerticalSpace(double height) => SizedBox(height: height * 100);

Widget addHorizontalSpace(double width) => SizedBox(width: width * 100);

Widget addExpand() => Expanded(child: Container());

void snackBar(String title, String msg) => common(title, msg, green);

void errorSnackBar(String title, String msg) => common(title, msg, red);
void common(String title, String msg, Color color) => Get.snackbar(
  title,
  msg,
  colorText: white,
  snackPosition: SnackPosition.BOTTOM,
  backgroundColor: color,
  icon: Icon(Icons.safety_check, color: white, size: 45),
  duration: Duration(seconds: 3),
  padding: EdgeInsets.only(left: 20, top: 5, bottom: 5),
  margin: EdgeInsets.all(5),
  backgroundGradient: LinearGradient(colors: [color, white]),
  borderRadius: 5,
);
