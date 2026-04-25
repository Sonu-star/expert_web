import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/home/controller/home_controller.dart';

class ImageWidget extends StatelessWidget {
  final String name;
  final String image;
  const ImageWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) => GetBuilder(
    init: HomeController(),
    builder: (c) => c.showText
        ? Column(
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w800,
                  color: black,
                ),
              ),
              Text(
                "Flutter Developer",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: black,
                ),
              ),
            ],
          )
        : SizedBox(width: 60, child: Image.asset(image, fit: BoxFit.fitWidth)),
  );
}
