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
    apiKey: 'AIzaSyBOfqbl2vqIJEIsrRqIeUBhxv3i0BA2fKg',
    appId: '1:971581799197:web:6d4ecba81bacdb63e5fff4',
    messagingSenderId: '971581799197',
    projectId: 'foodapp-6d2e9',
    authDomain: 'foodapp-6d2e9.firebaseapp.com',
    storageBucket: 'foodapp-6d2e9.appspot.com',
    measurementId: 'G-FHHFJZDVG3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCdRd2S3qwtkaTKQM9438BjhH7s_7-7It8',
    appId: '1:971581799197:android:f5c3a848cf8eb8d3e5fff4',
    messagingSenderId: '971581799197',
    projectId: 'foodapp-6d2e9',
    storageBucket: 'foodapp-6d2e9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZ07JJABgDGG_oWcbCVLVoQ_JiDGJPyXw',
    appId: '1:971581799197:ios:f03c2b9ddd88ac25e5fff4',
    messagingSenderId: '971581799197',
    projectId: 'foodapp-6d2e9',
    storageBucket: 'foodapp-6d2e9.appspot.com',
    iosBundleId: 'com.abduqodir.food.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBZ07JJABgDGG_oWcbCVLVoQ_JiDGJPyXw',
    appId: '1:971581799197:ios:f03c2b9ddd88ac25e5fff4',
    messagingSenderId: '971581799197',
    projectId: 'foodapp-6d2e9',
    storageBucket: 'foodapp-6d2e9.appspot.com',
    iosBundleId: 'com.abduqodir.food.appp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBOfqbl2vqIJEIsrRqIeUBhxv3i0BA2fKg',
    appId: '1:971581799197:web:1e0ceaffea88b21de5fff4',
    messagingSenderId: '971581799197',
    projectId: 'foodapp-6d2e9',
    authDomain: 'foodapp-6d2e9.firebaseapp.com',
    storageBucket: 'foodapp-6d2e9.appspot.com',
    measurementId: 'G-M9H6Q5G47E',
  );
}
