import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/utility/api_access.dart';
import '../model/category_model.dart';

class CategoryApiClient {
  final http.Client httpClient;
  CategoryApiClient({ required this.httpClient});

  Map<String,String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    'zoneId': "1"
  };

  getCategoryData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.categoryUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        CategoryModel categoryModel = CategoryModel.fromJson(json.decode(response.body));
        return categoryModel;
      }
    }catch(_) {

    }
  }
}