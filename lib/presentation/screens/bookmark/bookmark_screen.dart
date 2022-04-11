import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/bookmark_controller.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bookmark')),
      body: Center(
        child: Text(Get.find<BookmarkController>().title.value),
      ),
    );
  }
}