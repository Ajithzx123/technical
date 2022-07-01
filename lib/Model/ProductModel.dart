class ShopDetails {
  ShopDetails({
    required this.errorCode,
    required this.responseString,
    required this.data,
     this.data1,
     this.data2,
     this.data3,
  });
  late final int errorCode;
  late final String responseString;
  late final List<Data> data;
  late final Null data1;
  late final Null data2;
  late final Null data3;
  
  ShopDetails.fromJson(Map<String, dynamic> json){
    errorCode = json['error_code'];
    responseString = json['response_string'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
    data1 = null;
    data2 = null;
    data3 = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['error_code'] = errorCode;
    _data['response_string'] = responseString;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    _data['data1'] = data1;
    _data['data2'] = data2;
    _data['data3'] = data3;
    return _data;
  }
}

class Data {
  Data({
    required this.markets,
    required this.shops,
  });
  late final Markets markets;
  late final List<Shops> shops;
  
  Data.fromJson(Map<String, dynamic> json){
    markets = Markets.fromJson(json['markets']);
    shops = List.from(json['shops']).map((e)=>Shops.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['markets'] = markets.toJson();
    _data['shops'] = shops.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Markets {
  Markets({
    required this.id,
    required this.name,
    required this.state,
    required this.city,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.showDefault,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
     this.deletedAt,
  });
  late final String id;
  late final String name;
  late final String state;
  late final String city;
  late final String address;
  late final String latitude;
  late final String longitude;
  late final String showDefault;
  late final String image;
  late final String createdAt;
  late final String updatedAt;
  late final Null deletedAt;
  
  Markets.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    state = json['state'];
    city = json['city'];
    address = json['address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    showDefault = json['show_default'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['state'] = state;
    _data['city'] = city;
    _data['address'] = address;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['show_default'] = showDefault;
    _data['image'] = image;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    return _data;
  }
}

class Shops {
  Shops({
    required this.shop,
    required this.offers,
    required this.status,
     this.ratings,
    required this.categories,
    required this.shopkeeper,
  });
  late final Shop shop;
  late final String offers;
  late final String status;
  late final Null ratings;
  late final List<Categories> categories;
  late final Shopkeeper shopkeeper;
  
  Shops.fromJson(Map<String, dynamic> json){
    shop = Shop.fromJson(json['shop']);
    offers = json['offers'];
    status = json['status'];
    ratings = null;
    categories = List.from(json['categories']).map((e)=>Categories.fromJson(e)).toList();
    shopkeeper = Shopkeeper.fromJson(json['shopkeeper']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['shop'] = shop.toJson();
    _data['offers'] = offers;
    _data['status'] = status;
    _data['ratings'] = ratings;
    _data['categories'] = categories.map((e)=>e.toJson()).toList();
    _data['shopkeeper'] = shopkeeper.toJson();
    return _data;
  }
}

class Shop {
  Shop({
    required this.id,
    required this.userId,
    required this.shopName,
    required this.slugName,
    required this.gstNumber,
    required this.shopNumber,
    required this.street,
     this.landmark,
    required this.city,
    required this.state,
    required this.country,
    required this.pincode,
    required this.googleAddress,
    required this.latitude,
    required this.longitude,
    required this.openTime,
    required this.closeTime,
    required this.deliveryRange,
    required this.description,
    required this.currentSubscriptionId,
     this.qrImage,
    required this.image,
    required this.marketId,
    required this.isShopClosed,
    required this.isSelfDelivered,
    required this.isAutoAccept,
     this.gstImage,
    required this.shopDays,
    required this.createdAt,
    required this.updatedAt,
     this.deletedAt,
  });
  late final String id;
  late final String userId;
  late final String shopName;
  late final String slugName;
  late final String gstNumber;
  late final String shopNumber;
  late final String street;
  late final Null landmark;
  late final String city;
  late final String state;
  late final String country;
  late final String pincode;
  late final String googleAddress;
  late final String latitude;
  late final String longitude;
  late final String openTime;
  late final String closeTime;
  late final String deliveryRange;
  late final String description;
  late final String currentSubscriptionId;
  late final Null qrImage;
  late final String image;
  late final String marketId;
  late final String isShopClosed;
  late final String isSelfDelivered;
  late final String isAutoAccept;
  late final Null gstImage;
  late final String shopDays;
  late final String createdAt;
  late final String updatedAt;
  late final Null deletedAt;
  
  Shop.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    shopName = json['shop_name'];
    slugName = json['slug_name'];
    gstNumber = json['gst_number'];
    shopNumber = json['shop_number'];
    street = json['street'];
    landmark = null;
    city = json['city'];
    state = json['state'];
    country = json['country'];
    pincode = json['pincode'];
    googleAddress = json['google_address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    openTime = json['open_time'];
    closeTime = json['close_time'];
    deliveryRange = json['delivery_range'];
    description = json['description'];
    currentSubscriptionId = json['current_subscription_id'];
    qrImage = null;
    image = json['image'];
    marketId = json['market_id'];
    isShopClosed = json['is_shop_closed'];
    isSelfDelivered = json['is_self_delivered'];
    isAutoAccept = json['is_auto_accept'];
    gstImage = null;
    shopDays = json['shop_days'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['shop_name'] = shopName;
    _data['slug_name'] = slugName;
    _data['gst_number'] = gstNumber;
    _data['shop_number'] = shopNumber;
    _data['street'] = street;
    _data['landmark'] = landmark;
    _data['city'] = city;
    _data['state'] = state;
    _data['country'] = country;
    _data['pincode'] = pincode;
    _data['google_address'] = googleAddress;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['open_time'] = openTime;
    _data['close_time'] = closeTime;
    _data['delivery_range'] = deliveryRange;
    _data['description'] = description;
    _data['current_subscription_id'] = currentSubscriptionId;
    _data['qr_image'] = qrImage;
    _data['image'] = image;
    _data['market_id'] = marketId;
    _data['is_shop_closed'] = isShopClosed;
    _data['is_self_delivered'] = isSelfDelivered;
    _data['is_auto_accept'] = isAutoAccept;
    _data['gst_image'] = gstImage;
    _data['shop_days'] = shopDays;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    return _data;
  }
}

class Categories {
  Categories({
    required this.id,
    required this.categoryType,
    required this.name,
    required this.slug,
     this.parentId,
    required this.commission,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
     this.deletedAt,
  });
  late final String id;
  late final String categoryType;
  late final String name;
  late final String slug;
  late final Null parentId;
  late final String commission;
  late final String image;
  late final String createdAt;
  late final String updatedAt;
  late final Null deletedAt;
  
  Categories.fromJson(Map<String, dynamic> json){
    id = json['id'];
    categoryType = json['category_type'];
    name = json['name'];
    slug = json['slug'];
    parentId = null;
    commission = json['commission'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['category_type'] = categoryType;
    _data['name'] = name;
    _data['slug'] = slug;
    _data['parent_id'] = parentId;
    _data['commission'] = commission;
    _data['image'] = image;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    return _data;
  }
}

class Shopkeeper {
  Shopkeeper({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    required this.appKey,
     this.dob,
    required this.age,
    required this.gender,
     this.image,
     this.fcmToken,
     this.aadhaarNumber,
     this.aadhaarFront,
     this.aadhaarBack,
     this.panNumber,
     this.panImage,
     this.fbLogin,
     this.gmailLogin,
    required this.userType,
    required this.password,
    required this.isVerified,
    required this.isKyc,
    required this.referalCode,
     this.googleAddress,
    required this.latitude,
    required this.longitude,
    required this.createdAt,
    required this.updatedAt,
     this.deletedAt,
  });
  late final String id;
  late final String firstName;
  late final String lastName;
  late final String email;
  late final String phone;
  late final String appKey;
  late final Null dob;
  late final String age;
  late final String gender;
  late final Null image;
  late final Null fcmToken;
  late final String? aadhaarNumber;
  late final String? aadhaarFront;
  late final String? aadhaarBack;
  late final String? panNumber;
  late final String? panImage;
  late final Null fbLogin;
  late final Null gmailLogin;
  late final String userType;
  late final String password;
  late final String isVerified;
  late final String isKyc;
  late final String referalCode;
  late final Null googleAddress;
  late final String latitude;
  late final String longitude;
  late final String createdAt;
  late final String updatedAt;
  late final Null deletedAt;
  
  Shopkeeper.fromJson(Map<String, dynamic> json){
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    phone = json['phone'];
    appKey = json['app_key'];
    dob = null;
    age = json['age'];
    gender = json['gender'];
    image = null;
    fcmToken = null;
    aadhaarNumber = null;
    aadhaarFront = null;
    aadhaarBack = null;
    panNumber = null;
    panImage = null;
    fbLogin = null;
    gmailLogin = null;
    userType = json['user_type'];
    password = json['password'];
    isVerified = json['is_verified'];
    isKyc = json['is_kyc'];
    referalCode = json['referal_code'];
    googleAddress = null;
    latitude = json['latitude'];
    longitude = json['longitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['first_name'] = firstName;
    _data['last_name'] = lastName;
    _data['email'] = email;
    _data['phone'] = phone;
    _data['app_key'] = appKey;
    _data['dob'] = dob;
    _data['age'] = age;
    _data['gender'] = gender;
    _data['image'] = image;
    _data['fcm_token'] = fcmToken;
    _data['aadhaar_number'] = aadhaarNumber;
    _data['aadhaar_front'] = aadhaarFront;
    _data['aadhaar_back'] = aadhaarBack;
    _data['pan_number'] = panNumber;
    _data['pan_image'] = panImage;
    _data['fb_login'] = fbLogin;
    _data['gmail_login'] = gmailLogin;
    _data['user_type'] = userType;
    _data['password'] = password;
    _data['is_verified'] = isVerified;
    _data['is_kyc'] = isKyc;
    _data['referal_code'] = referalCode;
    _data['google_address'] = googleAddress;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['deleted_at'] = deletedAt;
    return _data;
  }
}