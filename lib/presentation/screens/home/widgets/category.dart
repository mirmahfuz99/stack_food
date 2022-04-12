import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/components/app_texts.dart';
import '../../../../controllers/category_controller.dart';
import '../../../../core/constants/strings.dart';
import '../../../../data/model/category_model.dart';
import 'category_item.dart';

class Categories extends GetView<CategoryController> {
  String categoryImageUrl;

  Categories({Key? key,required this.categoryImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildCategories();
  }

  //build categories
  Widget buildCategories(){
    return GetX<CategoryController>(
      initState: (state){
        Get.find<CategoryController>().getCategoryData();
      },
      builder: (_){
        List<Category>? categoryList = _.categoryModel.categoryList;
        if(categoryList != null) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MediumText(
                    fontSize: 15.0,
                    text: categories,color: Colors.black,),
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
        //loader will be implemented here
        return const SizedBox();
      },
    );
  }
}

