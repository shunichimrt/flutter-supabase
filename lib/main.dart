import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_supabase/pages/account_page.dart';
import 'package:flutter_supabase/pages/login_page.dart';
import 'package:flutter_supabase/pages/splash_page.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://ewfgtqfnydndtbggxcbs.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV3Zmd0cWZueWRuZHRiZ2d4Y2JzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzQ5MDI1NzgsImV4cCI6MTk5MDQ3ODU3OH0.nhlqeX6upBsF2QIuMuyyRAcfVvBBeveap9QA-6DD0OM',
    authCallbackUrlHostname: 'login-callback',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Flutter',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.green,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.green,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.green,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (_) => const SplashPage(),
        '/login': (_) => const LoginPage(),
        '/account': (_) => const AccountPage(),
      },
    );
  }
}
