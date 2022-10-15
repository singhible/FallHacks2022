
import 'package:flutter/material.dart';
import 'widgets/homepage_widgets/Cardstack.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: const [
            //BackgroudCurveWidget(),
            CardsStackWidget(),
          ],
        ),
      ),
    );
  }
}

import 'package:fallhacks2022/widgets/auth_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'widgets/homepage_widgets/Cardstack.dart';

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
      body: Stack(
          children: const [
            //BackgroudCurveWidget(),
            CardsStackWidget(),
          ],
        ),
    );
  }
}


