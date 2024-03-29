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
    apiKey: 'AIzaSyBFFbPr4eUzYr5K5nzNKk5t_mrMSUYmRSE',
    appId: '1:211833594598:web:61a012ff8c838fd53f1127',
    messagingSenderId: '211833594598',
    projectId: 'eos-chatting-a33d1',
    authDomain: 'eos-chatting-a33d1.firebaseapp.com',
    storageBucket: 'eos-chatting-a33d1.appspot.com',
    measurementId: 'G-L5GJHVKV24',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUSVdnq6Z4mHXmkO8OiPuupMsy7c5dxqk',
    appId: '1:211833594598:android:222e639d147702893f1127',
    messagingSenderId: '211833594598',
    projectId: 'eos-chatting-a33d1',
    storageBucket: 'eos-chatting-a33d1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAufXPEw_O6czHg7-gnIOs6yKbjZnLuYHM',
    appId: '1:211833594598:ios:0995481280274e223f1127',
    messagingSenderId: '211833594598',
    projectId: 'eos-chatting-a33d1',
    storageBucket: 'eos-chatting-a33d1.appspot.com',
    iosClientId: '211833594598-cs3ibb5a99vtge60g8vmhno68mgrati3.apps.googleusercontent.com',
    iosBundleId: 'com.eos.eosChatting',
  );
}
