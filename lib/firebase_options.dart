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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDki_1B3ktPWJm1b0QLwpXugL7bqhhKMCI',
    appId: '1:488779882353:web:c2d6fa5a60e5ebd12460d0',
    messagingSenderId: '488779882353',
    projectId: 'flutter-assignment-86e23',
    authDomain: 'flutter-assignment-86e23.firebaseapp.com',
    storageBucket: 'flutter-assignment-86e23.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqLc-8NzEelnmQnWhcXPxloqtwNx8VSW0',
    appId: '1:488779882353:android:885698b510bd1e892460d0',
    messagingSenderId: '488779882353',
    projectId: 'flutter-assignment-86e23',
    storageBucket: 'flutter-assignment-86e23.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDki_1B3ktPWJm1b0QLwpXugL7bqhhKMCI',
    appId: '1:488779882353:web:c63db0ce75463a4e2460d0',
    messagingSenderId: '488779882353',
    projectId: 'flutter-assignment-86e23',
    authDomain: 'flutter-assignment-86e23.firebaseapp.com',
    storageBucket: 'flutter-assignment-86e23.appspot.com',
  );
}