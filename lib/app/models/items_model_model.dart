class ItemsModel {
  int? id;
  String? name;
  double? price;

  ItemsModel({this.id, this.name, this.price});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
  }
/*
*  factory ItemsModel.fromJson(Map<String, dynamic> json) => ItemsModel(
        id: json['id'],
        name: json['name'],
        price: json['price'],
      );*/
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['price'] = price;
    return data;
  }
}

class Data {
  List<ItemsModel>? items;
  Data({this.items});

  factory Data.fromJson(List<dynamic> json) => Data(
        items: List<ItemsModel>.generate(
          json.length,
          (index) => ItemsModel.fromJson(
            json[index],
          ),
        ),
      );
}
