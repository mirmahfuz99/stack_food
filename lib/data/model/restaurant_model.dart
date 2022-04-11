class RestaurantModel {
  int? totalSize;
  String? limit;
  String? offset;
  List<Restaurants>? restaurants;

  RestaurantModel({this.totalSize, this.limit, this.offset, this.restaurants});

  RestaurantModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'];
    offset = json['offset'];
    if (json['restaurants'] != null) {
      restaurants = <Restaurants>[];
      json['restaurants'].forEach((v) {
        restaurants!.add(new Restaurants.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total_size'] = this.totalSize;
    data['limit'] = this.limit;
    data['offset'] = this.offset;
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Restaurants {
  int? id;
  String? name;
  String? phone;
  String? email;
  String? logo;
  String? latitude;
  String? longitude;
  String? address;
  Null? footerText;
  int? minimumOrder;
  int? comission;
  bool? scheduleOrder;
  int? status;
  int? vendorId;
  String? createdAt;
  String? updatedAt;
  bool? freeDelivery;
  String? coverPhoto;
  bool? delivery;
  bool? takeAway;
  bool? foodSection;
  int? tax;
  int? zoneId;
  bool? reviewsSection;
  bool? active;
  String? offDay;
  int? selfDeliverySystem;
  bool? posSystem;
  int? deliveryCharge;
  String? deliveryTime;
  int? veg;
  int? nonVeg;
  int? orderCount;
  int? totalOrder;
  int? open;
  String? availableTimeStarts;
  String? availableTimeEnds;
  int? avgRating;
  int? ratingCount;
  bool? gstStatus;
  String? gstCode;
  Discount? discount;

  Restaurants(
      {this.id,
        this.name,
        this.phone,
        this.email,
        this.logo,
        this.latitude,
        this.longitude,
        this.address,
        this.footerText,
        this.minimumOrder,
        this.comission,
        this.scheduleOrder,
        this.status,
        this.vendorId,
        this.createdAt,
        this.updatedAt,
        this.freeDelivery,
        this.coverPhoto,
        this.delivery,
        this.takeAway,
        this.foodSection,
        this.tax,
        this.zoneId,
        this.reviewsSection,
        this.active,
        this.offDay,
        this.selfDeliverySystem,
        this.posSystem,
        this.deliveryCharge,
        this.deliveryTime,
        this.veg,
        this.nonVeg,
        this.orderCount,
        this.totalOrder,
        this.open,
        this.availableTimeStarts,
        this.availableTimeEnds,
        this.avgRating,
        this.ratingCount,
        this.gstStatus,
        this.gstCode,
        this.discount});

  Restaurants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    logo = json['logo'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    address = json['address'];
    footerText = json['footer_text'];
    minimumOrder = json['minimum_order'];
    comission = json['comission'];
    scheduleOrder = json['schedule_order'];
    status = json['status'];
    vendorId = json['vendor_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    freeDelivery = json['free_delivery'];
    coverPhoto = json['cover_photo'];
    delivery = json['delivery'];
    takeAway = json['take_away'];
    foodSection = json['food_section'];
    tax = json['tax'];
    zoneId = json['zone_id'];
    reviewsSection = json['reviews_section'];
    active = json['active'];
    offDay = json['off_day'];
    selfDeliverySystem = json['self_delivery_system'];
    posSystem = json['pos_system'];
    deliveryCharge = json['delivery_charge'];
    deliveryTime = json['delivery_time'];
    veg = json['veg'];
    nonVeg = json['non_veg'];
    orderCount = json['order_count'];
    totalOrder = json['total_order'];
    open = json['open'];
    availableTimeStarts = json['available_time_starts'];
    availableTimeEnds = json['available_time_ends'];
    avgRating = json['avg_rating'];
    ratingCount = json['rating_count '];
    gstStatus = json['gst_status'];
    gstCode = json['gst_code'];
    discount = json['discount'] != null
        ? new Discount.fromJson(json['discount'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['logo'] = this.logo;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['address'] = this.address;
    data['footer_text'] = this.footerText;
    data['minimum_order'] = this.minimumOrder;
    data['comission'] = this.comission;
    data['schedule_order'] = this.scheduleOrder;
    data['status'] = this.status;
    data['vendor_id'] = this.vendorId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['free_delivery'] = this.freeDelivery;
    data['cover_photo'] = this.coverPhoto;
    data['delivery'] = this.delivery;
    data['take_away'] = this.takeAway;
    data['food_section'] = this.foodSection;
    data['tax'] = this.tax;
    data['zone_id'] = this.zoneId;
    data['reviews_section'] = this.reviewsSection;
    data['active'] = this.active;
    data['off_day'] = this.offDay;
    data['self_delivery_system'] = this.selfDeliverySystem;
    data['pos_system'] = this.posSystem;
    data['delivery_charge'] = this.deliveryCharge;
    data['delivery_time'] = this.deliveryTime;
    data['veg'] = this.veg;
    data['non_veg'] = this.nonVeg;
    data['order_count'] = this.orderCount;
    data['total_order'] = this.totalOrder;
    data['open'] = this.open;
    data['available_time_starts'] = this.availableTimeStarts;
    data['available_time_ends'] = this.availableTimeEnds;
    data['avg_rating'] = this.avgRating;
    data['rating_count '] = this.ratingCount;
    data['gst_status'] = this.gstStatus;
    data['gst_code'] = this.gstCode;
    if (this.discount != null) {
      data['discount'] = this.discount!.toJson();
    }
    return data;
  }
}

class Discount {
  int? id;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;
  int? minPurchase;
  int? maxDiscount;
  int? discount;
  String? discountType;
  int? restaurantId;
  Null? createdAt;
  Null? updatedAt;

  Discount(
      {this.id,
        this.startDate,
        this.endDate,
        this.startTime,
        this.endTime,
        this.minPurchase,
        this.maxDiscount,
        this.discount,
        this.discountType,
        this.restaurantId,
        this.createdAt,
        this.updatedAt});

  Discount.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    minPurchase = json['min_purchase'];
    maxDiscount = json['max_discount'];
    discount = json['discount'];
    discountType = json['discount_type'];
    restaurantId = json['restaurant_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['start_date'] = this.startDate;
    data['end_date'] = this.endDate;
    data['start_time'] = this.startTime;
    data['end_time'] = this.endTime;
    data['min_purchase'] = this.minPurchase;
    data['max_discount'] = this.maxDiscount;
    data['discount'] = this.discount;
    data['discount_type'] = this.discountType;
    data['restaurant_id'] = this.restaurantId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}