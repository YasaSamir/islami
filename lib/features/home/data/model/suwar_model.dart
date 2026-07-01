class SuwarModel {
  final int id;
  final String name;
  final int startPage;
  final int endPage;
  final int makkia;
  final int type;

  SuwarModel(
    this.id, {
    required this.name,
    required this.startPage,
    required this.endPage,
    required this.makkia,
    required this.type,
  });

  factory SuwarModel.fromJson(Map<String, dynamic> json) {
    return SuwarModel(
        json['id'],
        name: json['name'],
        startPage: json['start_page'],
        endPage: json['end_page'],
        makkia: json['makkia'],
        type: json['type']
    );
  }
}

/*
   {
            "id": 1,
            "name": "Al-Fatihah ",
            "start_page": 1,
            "end_page": 1,
            "makkia": 1
            "type": 0
        },
 */
