class NumberApiObject {
  late _Number number;


  NumberApiObject(this.number);

  factory NumberApiObject.fromJson(Map<String, dynamic> json) {
    return NumberApiObject(_Number.fromJson(json["number"]));
  }
}

class _Number {
  String number;

  _Number(this.number);

  factory _Number.fromJson(Map<String, dynamic> json) {
    return _Number(json["number"]);
  }

}