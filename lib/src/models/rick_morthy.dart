import 'dart:convert';

class GetRick {
  GetRick({
    required this.id,
    required this.name,
    required this.image,
    required this.url,
  });

  int id;
  String name;
  String image;
  String url;

  factory GetRick.fromRawJson(String str) => GetRick.fromJson(json.decode(str));

  factory GetRick.fromJson(Map<String, dynamic> json) => GetRick(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        url: json["url"],
      );
}
