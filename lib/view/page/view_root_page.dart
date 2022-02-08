import 'package:dream_astrology/utils/utils.dart';
import 'package:dream_astrology/view/page/home_view.dart';
import 'package:flutter/material.dart' hide PageView;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'category_view.dart';
import 'page_view.dart';

class ViewRootPage extends StatelessWidget {
  const ViewRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Myanmar Dream Blog",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          //Bottom Tab Icon
          bottom: TabBar(
            tabs: [
              //Home
              tabBarItem("Home", FontAwesomeIcons.home),
              //Category
              tabBarItem("Category", FontAwesomeIcons.gripLines),
              //Page
              tabBarItem("Page", FontAwesomeIcons.stickyNote),
            ],
          ),
          //Right Action Two Icon
          actions: const [
            //SearchIcon
            Icon(
              FontAwesomeIcons.search,
              color: Colors.white,
            ),
            //Something
            Icon(
              FontAwesomeIcons.gripLines,
              color: Colors.white,
            ),
          ],
        ),
        //Left Drawer
        drawer: const Drawer(
            //TODO: DO SOMETHING
            ),
        body: const TabBarView(
          children: [
            HomeView(),
            CategoryView(),
            PageView(),
          ],
        ),
      ),
    );
  }
}
