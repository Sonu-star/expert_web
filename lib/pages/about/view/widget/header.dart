import 'package:expertgraphweb/global_export.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) => Column(
    mainAxisAlignment: .start,
    crossAxisAlignment: .start,
    children: [
      Text(title, style: TextStyle(fontSize: 30, fontWeight: FontWeight.w100)),
      Container(color: red, width: 40, height: 1),
    ],
  );
}
