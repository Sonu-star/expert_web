import 'package:expertgraphweb/global_export.dart';
import 'package:expertgraphweb/pages/about/model/expertise_model.dart';
import 'package:expertgraphweb/pages/about/view/widget/info_card.dart';

class ExpertiseInfo extends StatelessWidget {
  const ExpertiseInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var list = expertise;
    return InfoCard(
      header: 'My Expertise',
      child: [
        ...list.map((e) {
          return ListTile(
            leading: Icon(e.icon, color: Colors.red, size: 40),
            title: Text(e.k),
            subtitle: Text(e.v),
          );
        }),
      ],
    );
  }
}
