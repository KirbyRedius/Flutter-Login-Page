import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import 'pages/auth_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return FlutterSizer(
      builder: (context, orientation, screenType) {
        return const MaterialApp(
          home: AuthPage(),
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
