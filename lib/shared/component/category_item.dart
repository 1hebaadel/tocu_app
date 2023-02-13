import 'package:flutter/material.dart';
import 'package:toku_app/shared/component/component.dart';

class BuildCategoryItem extends StatelessWidget {

  final String name;
  final Widget widget;
  const BuildCategoryItem({
    required this.name,
    required this.widget
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          width: double.infinity,
          child: Card(
            color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: (){
                  navigateTo(context: context, widget: widget);
                },
                child: Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}