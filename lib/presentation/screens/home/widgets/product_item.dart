import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stack_food/components/app_texts.dart';
import 'package:stack_food/core/helper/helpers.dart';
import '../../../../core/constants/colors.dart';
import '../../../../data/model/popular_model.dart';

class ProductItem extends StatelessWidget {
  final Products products;
  final String productUrl;
  
  const ProductItem({Key? key, required this.products, required this.productUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          Container(
            height: 240.0,
            width: 267.0,
            decoration: BoxDecoration(
              color: mWhiteColor,
              boxShadow: const [
                BoxShadow(
                  color: courseShadowColor,
                  blurRadius: 20.0,
                  offset: Offset(0, 5),
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
              border: Border.all(color:mWhiteColor, width: 3.0, ),
            ),
          ),
          Container(
            width: 267.0,
            child: Column(
              children: [
                //image
                Container(
                  height: 150.0,
                  width: 267.0,
                  decoration: BoxDecoration(
                    color: courseBGColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0)),
                    border: Border.all(color:mWhiteColor, width: 3, ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("${productUrl}/${products.image!}")
                    ),
                  ),),
                //course_info
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12.0,top:0.0,bottom: 6.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if(products.name != null)
                              SemiBoldText(
                                fontSize: 15.0,
                                text: products.name!,color: mBlackColor,),
                              RegularText(text: products.restaurantName!),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RegularText(text: "\$${products.price.toString()}"),
                            Row(
                              children: [
                                const Icon(Icons.star,color: redColor,size: 15.0,),
                                Gaps.horizontalGapOf(8.0),
                                RegularText(text: products.avgRating.toString()),

                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      );
  }
}