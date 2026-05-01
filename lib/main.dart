// import 'package:google_adsense/google_adsense.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'global_export.dart';
import 'myapp.dart';

void main() async {
  setUrlStrategy(PathUrlStrategy());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: blood,
      statusBarColor: blood,
    ),
  );
  // await adSense.initialize('pub-8345909084193608');
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyBI2zk-C4_2yxPnI34q4qdKqheHqEcn9sI",
      authDomain: "library-c06d2.firebaseapp.com",
      databaseURL: "https://library-c06d2.firebaseio.com",
      projectId: "library-c06d2",
      storageBucket: "library-c06d2.appspot.com",
      messagingSenderId: "749359220248",
      appId: "1:749359220248:web:7442354b1c11a70cd2656d",
    ),
  );
  runApp(const MyApp());
}
