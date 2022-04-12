import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/utility/api_access.dart';
import '../model/campaigns_model.dart';

class FoodCampaignApiClient {
  final http.Client httpClient;
  FoodCampaignApiClient({ required this.httpClient});

  Map<String,String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    'zoneId': "1"
  };

  getFoodCampaignData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.foodCampaignUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        CampaignsModel popularModel = CampaignsModel.fromJson(json.decode(response.body));
        return popularModel;
      }
    }catch(_) {

    }
  }
}