import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../components/app_texts.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/helper/helpers.dart';

class CategoryItem extends StatelessWidget {
  final String? photoUrl;
  final String name;
  const CategoryItem({Key? key,   this.photoUrl, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: courseShadowColor,
                blurRadius: 20,
                offset: Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color:mWhiteColor, width: 3, ),
          ),
          child: Center(
            child: Image.network(photoUrl!,height: 32.0,),
          ),
        ),
        Gaps.verticalGapOf(10.0),
        RegularText(text: name),
      ],
    );
  }
}