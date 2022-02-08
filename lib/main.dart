import 'package:flutter/material.dart';

import 'view/page/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: PUT GETX CONTROLLER TO BE GLOBEL
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const ViewRootPage(),
    );
  }
}
