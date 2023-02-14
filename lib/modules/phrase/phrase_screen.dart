import 'package:flutter/material.dart';
import 'package:toku_app/shared/constant/constant.dart';

import '../../shared/component/build_item.dart';
class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Phrases',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => BuildItem(
          image: phraseModel[index].image,
          textInJapanese: phraseModel[index].textInJapanese,
          textInEnglish: phraseModel[index].textInEnglish,
          category: 'phrases',
          sound: phraseModel[index].sound,
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 5,
        ),
        itemCount: phraseModel.length
        ,),
    );
  }
}