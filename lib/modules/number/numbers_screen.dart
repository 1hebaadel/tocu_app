import 'package:flutter/material.dart';
import 'package:toku_app/shared/component/build_item.dart';
import 'package:toku_app/shared/constant/constant.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);

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
              image: numberModel[index].image,
              textInJapanese: numberModel[index].textInJapanese,
              textInEnglish: numberModel[index].textInEnglish,
              category: 'numbers',
              sound: numberModel[index].sound,
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 5,
          ),
          itemCount: numberModel.length
        ,),
    );
  }
}
