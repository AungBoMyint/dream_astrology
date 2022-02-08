import 'package:dream_astrology/model/model.dart';
import 'package:dream_astrology/utils/dream_item.dart';
import 'package:flutter/material.dart';

class DreamListWidget extends StatelessWidget {
  final List<DreamItem> dreamItemList;
  final double width;
  final double height;
  const DreamListWidget({
    Key? key,
    required this.dreamItemList,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: dreamItemList.length,
      itemBuilder: (context, index) {
        return DreamItemWidget(
          w: width,
          h: height,
          dreamItem: dreamItemList[index],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
    );
  }
}
