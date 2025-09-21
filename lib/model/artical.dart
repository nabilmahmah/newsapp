class Artical {
  final String image;
  final String titel;
  final String subtitel;
  Artical({required this.image, required this.titel, required this.subtitel});

  factory Artical.fromJson(Map<String, dynamic> json) {
    return Artical(
      image: json["image"] ?? '',
      titel: json["title"] ?? '',
      subtitel: json["description"] ?? '',
    );
  }
}
