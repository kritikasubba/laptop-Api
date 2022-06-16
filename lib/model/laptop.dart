class Laptop {
  int? total;
  int? skip;
  int? limit;
  List<Products> products;

  Laptop({
    required this.limit,
    required this.skip,
    required this.total,
    required this.products,
  });

  factory Laptop.fromJson(Map<String, dynamic> json) {
    return Laptop(limit: json['limit'], skip: json['skip'], total: json['total'], products: List<Products>.from(json['products'].map((products) => Products.fromJson(products))));
    
  }
}


class Products {
  int? id;
  String? title;
  String? description;
  int? price;
  num? discountPercentage;
  num? rating;
  int? stock;
  String? brand;
  String? category;
  String? thumbnail;
  List<dynamic>? images;

  Products(
      {required this.brand,
      required this.category,
      required this.description,
      required this.discountPercentage,
      required this.id,
      required this.images,
      required this.price,
      required this.rating,
      required this.stock,
      required this.thumbnail,
      required this.title});

  Products.fromJson(Map<String, dynamic> json) {
    price = json['price'];
    brand = json['brand'];
    category = json['category'];
    description = json['description'];
    discountPercentage = json['discountPercentage'];
    id = json['id'];
    images = json['images'];
    rating = json['rating'];
    stock = json['stock'];
    thumbnail = json['thumbnail'];
    title = json['title'];
  }

  Map<String, dynamic>? toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['description'] = description;
    data['price'] = price;
    data['discountPercentage'] = discountPercentage;
    data['rating'] = rating;
    data['stock'] = stock;
    data['brand'] = brand;
    data['category'] = category;
    data['thumbnail'] = thumbnail;
    data['images'] =images;
    return data;
  }
}
