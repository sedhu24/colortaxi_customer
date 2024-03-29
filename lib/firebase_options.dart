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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCyCRGON7UHa31hrQyNrgPFIDOjys3JFoM',
    appId: '1:715814899425:web:95ce803ffe86ce214f31a0',
    messagingSenderId: '715814899425',
    projectId: 'colortaxi-customer',
    authDomain: 'colortaxi-customer.firebaseapp.com',
    storageBucket: 'colortaxi-customer.appspot.com',
    measurementId: 'G-2QMGXXMJ7V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAvRAeiekddX0Jm5VOA6RYURAkivl6reJU',
    appId: '1:715814899425:android:26946998f20b74944f31a0',
    messagingSenderId: '715814899425',
    projectId: 'colortaxi-customer',
    storageBucket: 'colortaxi-customer.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTTulfIN07XLpScih3hn-WpeKQnXiUJ8s',
    appId: '1:715814899425:ios:487c647267762e064f31a0',
    messagingSenderId: '715814899425',
    projectId: 'colortaxi-customer',
    storageBucket: 'colortaxi-customer.appspot.com',
    iosBundleId: 'com.colortaxi.ios',
  );
}
