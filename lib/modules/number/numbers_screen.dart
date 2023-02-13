import 'package:flutter/material.dart';
import 'package:toku_app/shared/component/number_category_item.dart';
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
          itemBuilder: (context, index) => NumberCategoryItem(
              image: numberModel[index].image,
              textInJapanese: numberModel[index].textInJapanese,
              textInEnglish: numberModel[index].textInEnglish,
          ),
          separatorBuilder: (context, index) => SizedBox(
            height: 5,
          ),
          itemCount: numberModel.length
        ,),
    );
  }
}
