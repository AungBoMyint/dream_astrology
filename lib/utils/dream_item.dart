import 'package:dream_astrology/model/model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DreamItemWidget extends StatelessWidget {
  final double w, h;
  final DreamItem dreamItem;
  const DreamItemWidget({
    Key? key,
    required this.w,
    required this.h,
    required this.dreamItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {/*TODO: DO SOMETHING */},
      child: SizedBox(
        width: w,
        height: h,
        child: Card(
          elevation: 10,
          child: Row(children: [
            //LEFT IMAGE
            Align(
                child: SizedBox(
              width: w * 0.4,
              height: h,
              child: Image.asset(dreamItem.image, fit: BoxFit.contain),
            )),
            //RIGHT TITLE
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //TITLE
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        dreamItem.title,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    //BOTTOM ROW
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //Date Time Text
                        Text(
                          dreamItem.dateTime,
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //Comment Row
                        SizedBox(
                          height: 30,
                          width: 30,
                          child: Row(
                            children: [
                              //Total Comment Count
                              Text(
                                "${dreamItem.comments.length}",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                              ),
                              //Comment Icon
                              const Icon(FontAwesomeIcons.comment,
                                  color: Colors.grey),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
