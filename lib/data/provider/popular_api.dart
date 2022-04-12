import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/utility/api_access.dart';
import '../model/popular_model.dart';

class PopularApiClient {
  final http.Client httpClient;
  PopularApiClient({ required this.httpClient});

  Map<String,String> headers = {
    "Accept": "application/json",
    "Content-Type": "application/json",
    'zoneId': "1"
  };

  getPopularData() async {
    Uri url = Uri.parse("${ApiAccess.baseUrl}${ApiAccess.popularUrl}");
    try {
      var response = await httpClient.get(url,headers: headers);
      if(response.statusCode == 200){
        PopularModel popularModel = PopularModel.fromJson(json.decode(response.body));
        return popularModel;
      }
    }catch(_) {

    }
  }
}