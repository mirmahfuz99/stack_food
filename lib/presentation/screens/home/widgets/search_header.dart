import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/constants/strings.dart';


class SearchHeader extends StatelessWidget {
  SearchHeader({Key? key}) : super(key: key);
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50.0,
          width: Get.width - 30,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 4,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          padding: const EdgeInsets.all(3.0),
          child: TextField(
            controller: searchController,
            textAlignVertical: TextAlignVertical.center,
            textInputAction: TextInputAction.search,
            decoration: const InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.white,
                filled: true,
                suffixIcon: Icon(
                  Icons.search_sharp,
                  color: Colors.grey,
                ),
                hintText: searchHint,
                hintStyle: TextStyle(
                  color: Colors.grey,
                )
            ),
            cursorColor: Colors.red,
            onSubmitted: (value) {
            },
          ),
        ),
        SizedBox(
          width: 9.0,
        ),
      ],
    );
  }
}