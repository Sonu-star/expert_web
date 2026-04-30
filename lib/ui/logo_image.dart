import 'package:expertgraphweb/global_export.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key, this.width, this.height});
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Image.asset(Images.appLogo, width: width, height: height);
  }
}
