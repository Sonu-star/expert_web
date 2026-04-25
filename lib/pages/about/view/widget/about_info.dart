import 'package:expertgraphweb/global_export.dart';
import 'export.dart';

class AboutInfo extends StatelessWidget {
  const AboutInfo({super.key});

  @override
  Widget build(BuildContext context) => InfoCard(
    header: 'Who am I ?',
    child: [
      Text("A Flutter Developer Located In Our Lovely Earth"),
      SizedBox(height: 10),
      Text(
        "Flutter Developer based in India, woring in Epic Corporations PVT LTD as A Jr. Android Developer since july 2020. I have developed Educational and service base Mobile Applications for the company. During this duration I have learned all the essential tools and programs. I have started all the projects from scratch and completed them.",
      ),
    ],
  );
}
