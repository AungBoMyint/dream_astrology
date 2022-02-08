import 'package:dream_astrology/model/dream_item.dart';

final List<DreamItem> dreamItemList = List.generate(8, (index) {
  return DreamItem(
    title: "Will Change in Myanmar Text",
    image: "image/image${index + 1}.jpg",
    dateTime: "November 20, 2020",
    comments: [],
  );
});
