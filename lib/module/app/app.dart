import 'package:flutter/material.dart';

import '../main/main_public.dart';

class ViivApp extends StatelessWidget {
  const ViivApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: createMain(),
    );
  }
}
