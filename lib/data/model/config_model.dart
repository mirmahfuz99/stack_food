class ConfigModel {
  String? businessName;
  String? logo;
  String? address;
  String? phone;
  String? email;
  BaseUrls? baseUrls;
  String? country;
  DefaultLocation? defaultLocation;
  String? currencySymbol;
  String? currencySymbolDirection;
  int? appMinimumVersionAndroid;
  var appUrlAndroid;
  int? appMinimumVersionIos;
  var appUrlIos;
  bool? customerVerification;
  bool? scheduleOrder;
  bool? orderDeliveryVerification;
  bool? cashOnDelivery;
  bool? digitalPayment;
  String? termsAndConditions;
  String? privacyPolicy;
  String? aboutUs;
  int? perKmShippingCharge;
  int? minimumShippingCharge;
  int? freeDeliveryOver;
  bool? demo;
  bool? maintenanceMode;
  String? orderConfirmationModel;
  int? popularFood;
  int? popularRestaurant;
  int? newRestaurant;
  int? mostReviewedFoods;
  bool? showDmEarning;
  bool? canceledByDeliveryman;
  bool? canceledByRestaurant;
  String? timeformat;
  List<Language>? language;
  bool? toggleVegNonVeg;
  bool? toggleDmRegistration;
  bool? toggleRestaurantRegistration;
  int? scheduleOrderSlotDuration;
  int? digitAfterDecimalPoint;

  ConfigModel(
      {businessName,
        logo,
        address,
        phone,
        email,
        baseUrls,
        country,
        defaultLocation,
        currencySymbol,
        currencySymbolDirection,
        appMinimumVersionAndroid,
        appUrlAndroid,
        appMinimumVersionIos,
        appUrlIos,
        customerVerification,
        scheduleOrder,
        orderDeliveryVerification,
        cashOnDelivery,
        digitalPayment,
        termsAndConditions,
        privacyPolicy,
        aboutUs,
        perKmShippingCharge,
        minimumShippingCharge,
        freeDeliveryOver,
        demo,
        maintenanceMode,
        orderConfirmationModel,
        popularFood,
        popularRestaurant,
        newRestaurant,
        mostReviewedFoods,
        showDmEarning,
        canceledByDeliveryman,
        canceledByRestaurant,
        timeformat,
        language,
        toggleVegNonVeg,
        toggleDmRegistration,
        toggleRestaurantRegistration,
        scheduleOrderSlotDuration,
        digitAfterDecimalPoint});

  ConfigModel.fromJson(Map<String, dynamic> json) {
    businessName = json['business_name'];
    logo = json['logo'];
    address = json['address'];
    phone = json['phone'];
    email = json['email'];
    baseUrls = json['base_urls'] != null
        ?  BaseUrls.fromJson(json['base_urls'])
        : null;
    country = json['country'];
    defaultLocation = json['default_location'] != null
        ?  DefaultLocation.fromJson(json['default_location'])
        : null;
    currencySymbol = json['currency_symbol'];
    currencySymbolDirection = json['currency_symbol_direction'];
    appMinimumVersionAndroid = json['app_minimum_version_android'];
    appUrlAndroid = json['app_url_android'];
    appMinimumVersionIos = json['app_minimum_version_ios'];
    appUrlIos = json['app_url_ios'];
    customerVerification = json['customer_verification'];
    scheduleOrder = json['schedule_order'];
    orderDeliveryVerification = json['order_delivery_verification'];
    cashOnDelivery = json['cash_on_delivery'];
    digitalPayment = json['digital_payment'];
    termsAndConditions = json['terms_and_conditions'];
    privacyPolicy = json['privacy_policy'];
    aboutUs = json['about_us'];
    perKmShippingCharge = json['per_km_shipping_charge'];
    minimumShippingCharge = json['minimum_shipping_charge'];
    freeDeliveryOver = json['free_delivery_over'];
    demo = json['demo'];
    maintenanceMode = json['maintenance_mode'];
    orderConfirmationModel = json['order_confirmation_model'];
    popularFood = json['popular_food'];
    popularRestaurant = json['popular_restaurant'];
    newRestaurant = json['new_restaurant'];
    mostReviewedFoods = json['most_reviewed_foods'];
    showDmEarning = json['show_dm_earning'];
    canceledByDeliveryman = json['canceled_by_deliveryman'];
    canceledByRestaurant = json['canceled_by_restaurant'];
    timeformat = json['timeformat'];
    if (json['language'] != null) {
      language = <Language>[];
      json['language'].forEach((v) {
        language!.add( Language.fromJson(v));
      });
    }
    toggleVegNonVeg = json['toggle_veg_non_veg'];
    toggleDmRegistration = json['toggle_dm_registration'];
    toggleRestaurantRegistration = json['toggle_restaurant_registration'];
    scheduleOrderSlotDuration = json['schedule_order_slot_duration'];
    digitAfterDecimalPoint = json['digit_after_decimal_point'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['business_name'] = businessName;
    data['logo'] = logo;
    data['address'] = address;
    data['phone'] = phone;
    data['email'] = email;
    if (baseUrls != null) {
      data['base_urls'] = baseUrls!.toJson();
    }
    data['country'] = country;
    if (defaultLocation != null) {
      data['default_location'] = defaultLocation!.toJson();
    }
    data['currency_symbol'] = currencySymbol;
    data['currency_symbol_direction'] = currencySymbolDirection;
    data['app_minimum_version_android'] = appMinimumVersionAndroid;
    data['app_url_android'] = appUrlAndroid;
    data['app_minimum_version_ios'] = appMinimumVersionIos;
    data['app_url_ios'] = appUrlIos;
    data['customer_verification'] = customerVerification;
    data['schedule_order'] = scheduleOrder;
    data['order_delivery_verification'] = orderDeliveryVerification;
    data['cash_on_delivery'] = cashOnDelivery;
    data['digital_payment'] = digitalPayment;
    data['terms_and_conditions'] = termsAndConditions;
    data['privacy_policy'] = privacyPolicy;
    data['about_us'] = aboutUs;
    data['per_km_shipping_charge'] = perKmShippingCharge;
    data['minimum_shipping_charge'] = minimumShippingCharge;
    data['free_delivery_over'] = freeDeliveryOver;
    data['demo'] = demo;
    data['maintenance_mode'] = maintenanceMode;
    data['order_confirmation_model'] = orderConfirmationModel;
    data['popular_food'] = popularFood;
    data['popular_restaurant'] = popularRestaurant;
    data['new_restaurant'] = newRestaurant;
    data['most_reviewed_foods'] = mostReviewedFoods;
    data['show_dm_earning'] = showDmEarning;
    data['canceled_by_deliveryman'] = canceledByDeliveryman;
    data['canceled_by_restaurant'] = canceledByRestaurant;
    data['timeformat'] = timeformat;
    if (language != null) {
      data['language'] = language!.map((v) => v.toJson()).toList();
    }
    data['toggle_veg_non_veg'] = toggleVegNonVeg;
    data['toggle_dm_registration'] = toggleDmRegistration;
    data['toggle_restaurant_registration'] = toggleRestaurantRegistration;
    data['schedule_order_slot_duration'] = scheduleOrderSlotDuration;
    data['digit_after_decimal_point'] = digitAfterDecimalPoint;
    return data;
  }
}
class BaseUrls {
  String? productImageUrl;
  String? customerImageUrl;
  String? bannerImageUrl;
  String? categoryImageUrl;
  String? reviewImageUrl;
  String? notificationImageUrl;
  String? restaurantImageUrl;
  String? vendorImageUrl;
  String? restaurantCoverPhotoUrl;
  String? deliveryManImageUrl;
  String? chatImageUrl;
  String? campaignImageUrl;
  String? businessLogoUrl;

  BaseUrls(
      {productImageUrl,
        customerImageUrl,
        bannerImageUrl,
        categoryImageUrl,
        reviewImageUrl,
        notificationImageUrl,
        restaurantImageUrl,
        vendorImageUrl,
        restaurantCoverPhotoUrl,
        deliveryManImageUrl,
        chatImageUrl,
        campaignImageUrl,
        businessLogoUrl});

  BaseUrls.fromJson(Map<String, dynamic> json) {
    productImageUrl = json['product_image_url'];
    customerImageUrl = json['customer_image_url'];
    bannerImageUrl = json['banner_image_url'];
    categoryImageUrl = json['category_image_url'];
    reviewImageUrl = json['review_image_url'];
    notificationImageUrl = json['notification_image_url'];
    restaurantImageUrl = json['restaurant_image_url'];
    vendorImageUrl = json['vendor_image_url'];
    restaurantCoverPhotoUrl = json['restaurant_cover_photo_url'];
    deliveryManImageUrl = json['delivery_man_image_url'];
    chatImageUrl = json['chat_image_url'];
    campaignImageUrl = json['campaign_image_url'];
    businessLogoUrl = json['business_logo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['product_image_url'] = productImageUrl;
    data['customer_image_url'] = customerImageUrl;
    data['banner_image_url'] = bannerImageUrl;
    data['category_image_url'] = categoryImageUrl;
    data['review_image_url'] = reviewImageUrl;
    data['notification_image_url'] = notificationImageUrl;
    data['restaurant_image_url'] = restaurantImageUrl;
    data['vendor_image_url'] = vendorImageUrl;
    data['restaurant_cover_photo_url'] = restaurantCoverPhotoUrl;
    data['delivery_man_image_url'] = deliveryManImageUrl;
    data['chat_image_url'] = chatImageUrl;
    data['campaign_image_url'] = campaignImageUrl;
    data['business_logo_url'] = businessLogoUrl;
    return data;
  }
}
class DefaultLocation {
  String? lat;
  String? lng;

  DefaultLocation({lat, lng});

  DefaultLocation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = lat;
    data['lng'] = lng;
    return data;
  }
}
class Language {
  String? key;
  String? value;

  Language({key, value});

  Language.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

