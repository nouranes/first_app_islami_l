class RadioModel {
  List<Radios?>? radios;

  RadioModel({this.radios});

  RadioModel.fromJson(Map<String, dynamic> json) {
    if (json['radios'] is List) {
      radios = json['radios'] == null
          ? null
          : (json['radios'] as List)
          .map((item) => Radios.fromJson(item))
          .toList();
    }
  }
}

class Radios {
  int? id;
  String? name;
  String? url;
  String? recentData;

  Radios({this.name, this.url, this.recentData});

  Radios.fromJson(Map<String, dynamic> json) {
    if (json['id'] is int) {
      id = json['id'];
    }
    if (json['name'] is String) {
      name = json['name'];
    }
    if (json['url'] is String) {
      url = json['url'];
    }
    if (json['recentData'] is String) {
      recentData = json['recentData'];
    }
  }
}
