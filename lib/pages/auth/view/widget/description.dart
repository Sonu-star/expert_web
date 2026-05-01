import 'package:expertgraphweb/global_export.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 20,
        fontFamily: 'Regular',
        color: gray,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
