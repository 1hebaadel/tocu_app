import 'package:flutter/material.dart';
import 'package:toku_app/modules/color/colors_screen.dart';
import 'package:toku_app/modules/family_member/family_members_screen.dart';
import 'package:toku_app/modules/number/numbers_screen.dart';
import 'package:toku_app/modules/phrase/phrase_screen.dart';
import '../shared/component/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: const Text(
          'Toku',
        ),
      ),
      body: Column(
        children: [
          BuildCategoryItem(
              name: 'Numbers',
              widget: NumbersScreen(),
          ),
          BuildCategoryItem(
            name: 'Family Members',
            widget: FamilyMembersScreen(),
          ),
          BuildCategoryItem(
            name: 'Colors',
            widget: ColorsScreen(),
          ),
          BuildCategoryItem(
            name: 'Phrases',
            widget: PhrasesScreen(),
          ),
        ],
      ),
    );
  }
}
