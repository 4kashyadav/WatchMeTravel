import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:watch_me_travel/pages/Loginpage.dart';
import 'package:watch_me_travel/pages/SignUpPage.dart';
import 'package:watch_me_travel/responsive/mobile_layout.dart';
import 'package:watch_me_travel/responsive/responsive_layout.dart';
import 'package:watch_me_travel/responsive/web_layout.dart';
import 'package:watch_me_travel/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(apiKey: 'AIzaSyA4OG8rk2EMQnK76KDJJhrW2Miiw4W_tBA', appId: '1:746467374720:web:3a0df722a78cdb149a9865', messagingSenderId: '746467374720', projectId: 'watch-me-travel', storageBucket: 'watch-me-travel.appspot.com'),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Watch Me Travel',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        //home: const Responsive(
          //webLayout: WebLayout(),
          //mobileLayout: MobileLayout(),
        //),
        home: SignUpPage(),
        );
  }
}
