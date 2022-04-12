import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:stack_food/data/model/banners_model.dart';
import '../../core/utility/api_access.dart';

class BannersApiClient {
  final http.Client httpClient;
  BannersApiClient({ required this.httpClient});

  Map<String,String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    'zoneId': "1"
  };

  getBannerData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.bannerUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        BannersModel bannersModel = BannersModel.fromJson(json.decode(response.body));
        return bannersModel;
      }
    }catch(_) {

    }
  }
}