import 'package:flutter/material.dart';

class NumberCategoryItem extends StatelessWidget {

  String ? image;
  String ? textInEnglish;
  String ? textInJapanese;

  NumberCategoryItem({
    required this.image,
    required this.textInJapanese,
    required this.textInEnglish,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: Colors.redAccent,
        child: Row(
          children: [
            Container(
              color: Colors.red.shade200,
              child: Image(
                image: AssetImage(
                  image!,
                ),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              color: Colors.redAccent,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      children: [
                        Text(
                          textInJapanese!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          textInEnglish!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 110,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
