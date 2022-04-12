import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/components/app_texts.dart';
import 'package:stack_food/core/helper/helpers.dart';
import '../../../../controllers/category_controller.dart';
import '../../../../core/constants/colors.dart';
import '../../../../data/model/category_model.dart';

class Categories extends GetView<CategoryController> {
  String categoryImageUrl;

  Categories({Key? key,required this.categoryImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CategoryController>(
      initState: (state){
        Get.find<CategoryController>().getCategoryData();
      },
      builder: (_){
        List<Category>? categoryList = _.categoryModel.categoryList;
        if(categoryList!.isNotEmpty) {
          return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                MediumText(
                  fontSize: 15.0,
                  text: "Categories",color: Colors.black,),
                SeeAll(),
              ],
            ),

            Container(
              height: 130.0,
              child: ListView.builder(
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context,int index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CategoryItem(
                          photoUrl: "${categoryImageUrl}/${categoryList.elementAt(index).image!}",
                          name: categoryList.elementAt(index).name!),
                    );
                  }
              ),
            ),
          ],
        );
        }
        return const SizedBox();
      },
    );
  }
}

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
            border: Border.all(color:Colors.white, width: 3, ),
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