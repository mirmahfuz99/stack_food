import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stack_food/controllers/popular_food_controller.dart';
import 'package:stack_food/presentation/screens/home/widgets/product_item.dart';
import '../../../../components/app_texts.dart';
import '../../../../data/model/popular_model.dart';

class PopularFood extends GetView<PopularFoodController> {
  String productUrl;
  PopularFood({Key? key,required this.productUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildWidget();
  }

  //build popularFood Widget
  Widget _buildWidget(){
    return GetX<PopularFoodController>(
      initState: (state){
        Get.find<PopularFoodController>().getPopularData();
      },
      builder: (_){
        List<Products>? products = _.popularModel.products;
        if(products != null) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  MediumText(
                    fontSize: 15.0,
                    text: "Popular Food Nearby",color: Colors.black,),
                  SeeAll(),
                ],
              ),

              Container(
                height: 278.0,
                child: ListView.builder(
                    itemCount: products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context,int index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProductItem(products: products.elementAt(index), productUrl: productUrl),
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
