import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/utility/api_access.dart';
import '../model/restaurant_model.dart';

class RestaurantApiClient {
  final http.Client httpClient;
  RestaurantApiClient({ required this.httpClient});

  Map<String,String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    'zoneId': "1"
  };

  getRestaurantData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.restaurantUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        RestaurantModel popularModel = RestaurantModel.fromJson(json.decode(response.body));
        return popularModel;
      }
    }catch(_) {

    }
  }
}