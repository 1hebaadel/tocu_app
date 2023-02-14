import 'package:flutter/material.dart';
import 'package:toku_app/shared/constant/constant.dart';

import '../../shared/component/build_item.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Numbers',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => BuildItem(
          image: colorModel[index].image,
          textInJapanese: colorModel[index].textInJapanese,
          textInEnglish: colorModel[index].textInEnglish,
          category: 'colors',
          sound: colorModel[index].sound,
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 5,
        ),
        itemCount: familyMemberModel.length
        ,),
    );
  }
}
