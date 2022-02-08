import 'package:flutter/material.dart';

class PageView extends StatelessWidget {
  const PageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "PageView Widget",
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}
