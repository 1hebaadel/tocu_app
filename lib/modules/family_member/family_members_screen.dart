import 'package:flutter/material.dart';
import '../../shared/component/build_item.dart';
import '../../shared/constant/constant.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Family Members',
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => BuildItem(
          image: familyMemberModel[index].image,
          textInJapanese: familyMemberModel[index].textInJapanese,
          textInEnglish: familyMemberModel[index].textInEnglish,
          category: 'family_members',
          sound: familyMemberModel[index].sound,
        ),
        separatorBuilder: (context, index) => SizedBox(
          height: 5,
        ),
        itemCount: familyMemberModel.length
        ,),
    );
  }
}
