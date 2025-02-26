// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAioP_nvQm7o1Tr-tWI25HdFPpTOyTIbmU',
    appId: '1:1088760956582:web:65c65726e705bead8d9667',
    messagingSenderId: '1088760956582',
    projectId: 'tinder-clone-fccfc',
    authDomain: 'tinder-clone-fccfc.firebaseapp.com',
    storageBucket: 'tinder-clone-fccfc.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAFAval7A9KeQhdKjNszpoN90hq4rxmmLE',
    appId: '1:1088760956582:android:864e9e8b2c7ebca08d9667',
    messagingSenderId: '1088760956582',
    projectId: 'tinder-clone-fccfc',
    storageBucket: 'tinder-clone-fccfc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWrLhY2sSh4Oz8qlJfZ7axQvu7f1DKz3w',
    appId: '1:1088760956582:ios:2d2b7d2af802143f8d9667',
    messagingSenderId: '1088760956582',
    projectId: 'tinder-clone-fccfc',
    storageBucket: 'tinder-clone-fccfc.appspot.com',
    iosBundleId: 'com.example.tinderClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDWrLhY2sSh4Oz8qlJfZ7axQvu7f1DKz3w',
    appId: '1:1088760956582:ios:2d2b7d2af802143f8d9667',
    messagingSenderId: '1088760956582',
    projectId: 'tinder-clone-fccfc',
    storageBucket: 'tinder-clone-fccfc.appspot.com',
    iosBundleId: 'com.example.tinderClone',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAioP_nvQm7o1Tr-tWI25HdFPpTOyTIbmU',
    appId: '1:1088760956582:web:a50cb5c900dc94cc8d9667',
    messagingSenderId: '1088760956582',
    projectId: 'tinder-clone-fccfc',
    authDomain: 'tinder-clone-fccfc.firebaseapp.com',
    storageBucket: 'tinder-clone-fccfc.appspot.com',
  );
}
