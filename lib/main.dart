import 'package:fallhacks2022/widgets/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flake',
      themeMode: ThemeMode.system,
      home: AuthService().handleAuthState(),
      darkTheme: ThemeData(
      fontFamily: 'FiraSans',
      brightness: Brightness.dark,
      ),
    );
  }
}

