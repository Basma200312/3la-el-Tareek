
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
        return android;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAqycQ2RQOA53TTsKGF2Mm0yWpgu2frMLo',
    appId: '1:410898686301:web:93feab2fac46ed534548b4',
    messagingSenderId: '410898686301',
    projectId: 'bazinaka-619e2',
    authDomain: 'bazinaka-619e2.firebaseapp.com',
    storageBucket: 'bazinaka-619e2.firebasestorage.app',
    measurementId: 'G-9FWR9BLVSM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB-WpgPrtNm0hCWGXSGF3kLWnTqr7Rcnzo',
    appId: '1:410898686301:android:462ab6afd878558e4548b4',
    messagingSenderId: '410898686301',
    projectId: 'bazinaka-619e2',
    storageBucket: 'bazinaka-619e2.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCXQ08ETEmLqr118tMD_1uB3VcqOggMYBE',
    appId: '1:410898686301:ios:42d110e76a77de1a4548b4',
    messagingSenderId: '410898686301',
    projectId: 'bazinaka-619e2',
    storageBucket: 'bazinaka-619e2.firebasestorage.app',
    iosBundleId: 'com.example.omtProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCXQ08ETEmLqr118tMD_1uB3VcqOggMYBE',
    appId: '1:410898686301:ios:830c47bfc12054864548b4',
    messagingSenderId: '410898686301',
    projectId: 'bazinaka-619e2',
    storageBucket: 'bazinaka-619e2.firebasestorage.app',
    iosBundleId: 'com.example.alaElTareek',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAqycQ2RQOA53TTsKGF2Mm0yWpgu2frMLo',
    appId: '1:410898686301:web:8cf5ff7a31ecfbea4548b4',
    messagingSenderId: '410898686301',
    projectId: 'bazinaka-619e2',
    authDomain: 'bazinaka-619e2.firebaseapp.com',
    storageBucket: 'bazinaka-619e2.firebasestorage.app',
    measurementId: 'G-JDN25DXPEE',
  );
}
