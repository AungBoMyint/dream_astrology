import 'model.dart';

class DreamItem {
  final String title;
  final String image;
  final String dateTime;
  final List<Comment> comments;
  DreamItem(
      {required this.title,
      required this.image,
      required this.dateTime,
      required this.comments});
}
