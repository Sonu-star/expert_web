import 'package:expertgraphweb/global_export.dart';

class Expertise {
  final IconData icon;
  final String k;
  final String v;

  Expertise(this.icon, this.k, this.v);
}

List<Expertise> expertise = [
  Expertise(
    Icons.brush,
    "DESIGN",
    "Designing intuitive and engaging user experiences with attention to detail.",
  ),
  Expertise(
    Icons.terminal,
    "Develop",
    "Developing robust and scalable apps using modern technologies.",
  ),
  Expertise(
    Icons.tips_and_updates,
    "Write",
    "Applying strong logical thinking to solve complex technical challenges.",
  ),
  Expertise(
    Icons.auto_fix_high,
    "PROMOTE",
    "Refactoring and improving existing codebases for performance and scalability.",
  ),
];
