import 'package:flutter/material.dart';

Widget tabBarItem(String tabText,IconData tabIcon) {
  return SizedBox(
      height: 50,
      width: 50,
      child: SingleChildScrollView(
        child: Column(children: [
          Icon(tabIcon),
          const Text("Category", maxLines: 1, overflow: TextOverflow.ellipsis),
        ]),
      ));
}
