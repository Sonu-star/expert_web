import 'package:expertgraphweb/global_export.dart';
import 'widget/export.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) {
      var wide = constraints.maxWidth;
      if (constraints.maxWidth > 800) {
        return Column(
          children: [
            SizedBox(
              height: 660000 / wide,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: AboutInfo()),
                  Div(),
                  Expanded(child: PersonalInfo()),
                  Div(),
                  Expanded(child: ExpertiseInfo()),
                ],
              ),
            ),
            Divider(color: grayLightest),
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: .start,
          crossAxisAlignment: .start,
          children: [
            AboutInfo(),
            addVerticalSpace(0.1),
            PersonalInfo(),
            addVerticalSpace(0.1),
            ExpertiseInfo(),
          ],
        );
      }
    },
  );
}
