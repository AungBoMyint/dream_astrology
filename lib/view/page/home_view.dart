import 'package:dream_astrology/constant/mock_data.dart';
import 'package:dream_astrology/view/widget/home/dream_list_widget.dart';
import 'package:dream_astrology/view/widget/home/slider_widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, size) {
        return SizedBox(
          height: size.maxHeight,
          width: size.maxWidth,
          child: Column(
            children: [
              //Top Slider Widget
              SizedBox(
                height: size.maxHeight * 0.3,
                child: slidgerWidget(),
              ),
              //SPACE
              const SizedBox(
                height: 10,
              ),
              //Bottom List Widget
              Expanded(
                child: DreamListWidget(
                  dreamItemList: dreamItemList,
                  width: size.maxWidth,
                  height: size.maxHeight * 0.3,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
