import 'package:flutter/material.dart';

import 'components/nav_bar.dart';

class Athkar_App extends StatelessWidget {
  const Athkar_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Nav_Bar(),
      debugShowCheckedModeBanner: false,
    );
  }
}
