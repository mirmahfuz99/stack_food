import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stack_food/components/app_texts.dart';
import 'package:stack_food/core/helper/helpers.dart';
import '../../../../core/constants/colors.dart';
import '../../../../data/model/campaigns_model.dart';

class CampaignItem extends StatelessWidget {
  final Campaigns campaigns;
  final String campaignImageUrl;

  const CampaignItem({Key? key, required this.campaigns, required this.campaignImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height: 100.0,
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
              borderRadius: const BorderRadius.all(Radius.circular(25.0)),
              border: Border.all(color:mWhiteColor, width: 3.0, ),
            ),
          ),
          SizedBox(
            width: 267.0,
            child: Row(
              children: [
                //image
                Container(
                  height: 90.0,
                  width: 130.0,
                  decoration: BoxDecoration(
                    color: courseBGColor,
                    borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                    border: Border.all(color:mWhiteColor, width: 3, ),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage("$campaignImageUrl/${campaigns.image!}")
                    ),
                  ),),
                //course_info
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0,right: 12.0,top:0.0,bottom: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gaps.verticalGapOf(10.0),
                            if(campaigns.name != null)
                              SemiBoldText(
                                fontSize: 15.0,
                                textAlign: TextAlign.start,
                                text: campaigns.name!,color: mBlackColor,),
                            RegularText(text: campaigns.restaurantName!),

                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RegularText(text: "\$${campaigns.price.toString()}"),
                            Row(
                              children: [
                                const Icon(Icons.star,color: redColor,size: 15.0,),
                                Gaps.horizontalGapOf(8.0),
                                RegularText(text: campaigns.avgRating.toString()),
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