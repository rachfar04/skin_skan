import 'package:flutter/material.dart';
import 'package:skin_skan/src/views/pages/home_page.dart';
import 'package:skin_skan/src/views/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:skin_skan/src/views/pages/scan_page.dart';
import 'package:skin_skan/src/views/pages/gallery_page.dart';
import 'package:skin_skan/src/views/pages/camera_page.dart';
import 'package:skin_skan/src/views/pages/results_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? remembered = prefs.getBool('remember_me');

  runApp(
    MyApp(
      initialRoute: remembered == true ? '/home' : '/'
    )
  );
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({
    super.key,
    required this.initialRoute,
  });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SkinSkan',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // TRY THIS: Try running your application with "flutter run". You'll see
      //   // the application has a purple toolbar. Then, without quitting the app,
      //   // try changing the seedColor in the colorScheme below to Colors.green
      //   // and then invoke "hot reload" (save your changes or press the "hot
      //   // reload" button in a Flutter-supported IDE, or press "r" if you used
      //   // the command line to start the app).
      //   //
      //   // Notice that the counter didn't reset back to zero; the application
      //   // state is not lost during the reload. To reset the state, use hot
      //   // restart instead.
      //   //
      //   // This works for code too, not just values: Most code changes can be
      //   // tested with just a hot reload.
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      initialRoute: initialRoute,
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(title: 'SkinSkan Home'),
        // '/signup': (context) => SignUpPage(),
        // '/profile': (context) => ProfilePage(),
        // '/lesionMapping': (context) => LesionMappingPage(),
        // '/myProducts': (context) => MyProductsPage(),
        '/scanLesion': (context) => ScanLesionPage(title: 'Scan Lesion'),
        '/gallery': (context) => GalleryPage(title: 'Choose from gallery'),
        '/camera': (context) => CameraPage(title: 'Take photo'),
        '/results': (context) => ResultsPage(title: 'Your Results'),
      },
    );
  }
}

