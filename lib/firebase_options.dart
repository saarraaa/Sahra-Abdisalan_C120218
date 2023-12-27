// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA7NX--r8FkJ1zoqqaJAwtzLfFBvvu9kR8',
    appId: '1:310980589201:web:a65e89d028937a4cceb130',
    messagingSenderId: '310980589201',
    projectId: 'flutter-98a04',
    authDomain: 'flutter-98a04.firebaseapp.com',
    storageBucket: 'flutter-98a04.appspot.com',
    measurementId: 'G-8D4R04K1W6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA84Yo3UQ6zg64hF2FIcgrfTdqEKPKgurg',
    appId: '1:310980589201:android:701dec6d90bde04dceb130',
    messagingSenderId: '310980589201',
    projectId: 'flutter-98a04',
    storageBucket: 'flutter-98a04.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-62-vht1z6yyB0kkEcTQwEl7-QCpRkts',
    appId: '1:310980589201:ios:3eb8427f87e190e9ceb130',
    messagingSenderId: '310980589201',
    projectId: 'flutter-98a04',
    storageBucket: 'flutter-98a04.appspot.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-62-vht1z6yyB0kkEcTQwEl7-QCpRkts',
    appId: '1:310980589201:ios:ee7b2516a0e1cefbceb130',
    messagingSenderId: '310980589201',
    projectId: 'flutter-98a04',
    storageBucket: 'flutter-98a04.appspot.com',
    iosBundleId: 'com.example.flutterApplication1.RunnerTests',
  );
}
