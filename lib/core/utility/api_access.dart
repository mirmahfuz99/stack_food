//Header: {‘zoneId’: 1}
class ApiAccess {
  //BASE URL
  static String baseUrl = "https://stackfood-admin.6amtech.com";
  // Configuration API
  static String configurationUrl = "/api/v1/config";
  // Banner API
  static String bannerUrl = "/api/v1/banners";
  // Category API
  static String categoryUrl = "/api/v1/categories";
  // Popular product API
  static String popularUrl = "/api/v1/products/popular";
  // Food campaign API
  static String foodCampaignUrl = "/api/v1/campaigns/item";
  // Restaurant API (paginated)
  static String restaurantUrl = "/api/v1/restaurants/get-restaurants/all?offset=1&limit=10";
}