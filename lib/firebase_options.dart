import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8w-6PJFFMgc-bDYSamhrubyWMbvUZyCQ',
    appId: '1:992174911313:android:15099078256121ff68ad70',
    messagingSenderId: '992174911313',
    projectId: 'tesutu-82b34',
    storageBucket: 'tesutu-82b34.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8w-6PJFFMgc-bDYSamhrubyWMbvUZyCQ',
    appId: '1:992174911313:android:15099078256121ff68ad70',
    messagingSenderId: '271315637139',
    projectId: 'tesutu-82b34',
    storageBucket: 'tesutu-82b34.firebasestorage.app',
    iosBundleId: 'com.exam.tesutu',
  );
}
