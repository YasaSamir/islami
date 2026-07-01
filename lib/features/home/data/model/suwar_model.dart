class SuwarModel {
  final int number; // The API uses 'number', not 'id'
  final String name;
  final String englishName;
  final int numberOfAyahs; // Use this instead of pages

  SuwarModel({
    required this.number,
    required this.name,
    required this.englishName,
    required this.numberOfAyahs,
  });

  factory SuwarModel.fromJson(Map<String, dynamic> json) {
    return SuwarModel(
      // Ensure these keys match the API response exactly
      number: json['number'] ?? 0,
      name: json['name'] ?? '',
      englishName: json['englishName'] ?? '',
      numberOfAyahs: json['numberOfAyahs'] ?? 0,
    );
  }
}
