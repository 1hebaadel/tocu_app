import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BuildItem extends StatelessWidget {

  String ? image;
  String ? textInEnglish;
  String ? textInJapanese;
  String ? sound;
  String ? category;

  BuildItem({
    required this.image,
    required this.textInJapanese,
    required this.textInEnglish,
    required this.sound,
    required this.category,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Card(
        color: Colors.redAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0 , horizontal: 8),
          child: Row(
            children: [
              if(category != 'phrases')
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
              Expanded(
                child: Container(
                  color: Colors.redAccent,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              textInJapanese!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                overflow: TextOverflow.ellipsis
                              ),
                              maxLines: 2,
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
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () async {
                          AudioCache player = AudioCache(prefix: 'assets/sounds/${category}/');
                          player.play('$sound');
                        },
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
