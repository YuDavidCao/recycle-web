import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recycle_web/firebase_options.dart';
import 'package:recycle_web/pages/guide_page.dart';
import 'pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Recycle',
        theme: ThemeData(
          primarySwatch: const MaterialColor(0xFF517551, {
            50: Color(0xFF517551),
            100: Color(0xFF517551),
            200: Color(0xFF517551),
            300: Color(0xFF517551),
            400: Color(0xFF517551),
            500: Color(0xFF517551),
            600: Color(0xFF517551),
            700: Color(0xFF517551),
            800: Color(0xFF517551),
            900: Color(0xFF517551),
          }),
        ),
        initialRoute: '/HomePage',
        routes: {
          '/HomePage': (context) => const HomePage(),
          '/GuidePage': (context) => const GuidePage(),
        },
      ),
    );
  }
}
