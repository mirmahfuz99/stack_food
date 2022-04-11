class CampaignsModel {
  List<Campaigns>? campaignsList;
  CampaignsModel({this.campaignsList});

  factory CampaignsModel.fromJson(List<dynamic> parsedJson) {
    List<Campaigns> categoryList = <Campaigns>[];
    categoryList = parsedJson.map((e) => Campaigns.fromJson(e)).toList();
    return CampaignsModel(
      campaignsList: categoryList,
    );
  }
}

class Campaigns {
  int? id;
  String? image;
  String? description;
  int? status;
  int? adminId;
  var categoryId;
  List<CategoryIds>? categoryIds;
  int? price;
  int? tax;
  String? taxType;
  int? discount;
  String? discountType;
  int? restaurantId;
  String? createdAt;
  String? updatedAt;
  int? veg;
  String? name;
  String? availableTimeStarts;
  String? availableTimeEnds;
  String? availableDateStarts;
  String? availableDateEnds;
  String? restaurantName;
  int? restaurantDiscount;
  String? restaurantOpeningTime;
  String? restaurantClosingTime;
  bool? scheduleOrder;
  int? ratingCount;
  int? avgRating;

  Campaigns(
      {this.id,
        this.image,
        this.description,
        this.status,
        this.adminId,
        this.categoryId,
        this.categoryIds,
        this.price,
        this.tax,
        this.taxType,
        this.discount,
        this.discountType,
        this.restaurantId,
        this.createdAt,
        this.updatedAt,
        this.veg,
        this.name,
        this.availableTimeStarts,
        this.availableTimeEnds,
        this.availableDateStarts,
        this.availableDateEnds,
        this.restaurantName,
        this.restaurantDiscount,
        this.restaurantOpeningTime,
        this.restaurantClosingTime,
        this.scheduleOrder,
        this.ratingCount,
        this.avgRating});

  Campaigns.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    description = json['description'];
    status = json['status'];
    adminId = json['admin_id'];
    categoryId = json['category_id'];
    if (json['category_ids'] != null) {
      categoryIds = <CategoryIds>[];
      json['category_ids'].forEach((v) {
        categoryIds!.add(new CategoryIds.fromJson(v));
      });
    }
    price = json['price'];
    tax = json['tax'];
    taxType = json['tax_type'];
    discount = json['discount'];
    discountType = json['discount_type'];
    restaurantId = json['restaurant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    veg = json['veg'];
    name = json['name'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    availableDateStarts = json['available_date_starts'];
    availableDateEnds = json['available_date_ends'];
    restaurantName = json['restaurant_name'];
    restaurantDiscount = json['restaurant_discount'];
    restaurantOpeningTime = json['restaurant_opening_time'];
    restaurantClosingTime = json['restaurant_closing_time'];
    scheduleOrder = json['schedule_order'];
    ratingCount = json['rating_count'];
    avgRating = json['avg_rating'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['description'] = this.description;
    data['status'] = this.status;
    data['admin_id'] = this.adminId;
    data['category_id'] = this.categoryId;
    if (this.categoryIds != null) {
      data['category_ids'] = this.categoryIds!.map((v) => v.toJson()).toList();
    }
    data['price'] = this.price;
    data['tax'] = this.tax;
    data['tax_type'] = this.taxType;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['restaurant_id'] = this.restaurantId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['veg'] = this.veg;
    data['name'] = this.name;
    data['available_time_starts'] = this.availableTimeStarts;
    data['available_time_ends'] = this.availableTimeEnds;
    data['available_date_starts'] = this.availableDateStarts;
    data['available_date_ends'] = this.availableDateEnds;
    data['restaurant_name'] = this.restaurantName;
    data['restaurant_discount'] = this.restaurantDiscount;
    data['restaurant_opening_time'] = this.restaurantOpeningTime;
    data['restaurant_closing_time'] = this.restaurantClosingTime;
    data['schedule_order'] = this.scheduleOrder;
    data['rating_count'] = this.ratingCount;
    data['avg_rating'] = this.avgRating;
    return data;
  }
}
class CategoryIds {
  String? id;
  int? position;

  CategoryIds({this.id, this.position});

  CategoryIds.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['position'] = this.position;
    return data;
  }
}
