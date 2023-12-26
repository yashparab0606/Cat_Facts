// ignore: camel_case_types
class Textmodel {
  String? fact;
  int? length;

  Textmodel({this.fact, this.length});

  Textmodel.fromJson(Map<String, dynamic> json) {
    fact = json['fact'];
    length = json['length'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['fact'] = this.fact;
    data['length'] = this.length;
    return data;
  }
}
