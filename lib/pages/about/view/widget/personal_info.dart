import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/about/model/personal_info_model.dart';
import 'package:expertgraphweb/pages/about/view/widget/export.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var list = personalInfo;
    return InfoCard(
      header: 'Personal Info',
      child: [
        ...list.map((e) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child: Text("${e.k} : ${e.v}"),
          );
        }),
      ],
    );
  }
}
