// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Trends {
  final String imageUrl;
  final String title;

  Trends({
    required this.imageUrl,
    required this.title,
  });

  Trends copyWith({
    String? imageUrl,
    String? title,
  }) {
    return Trends(
      imageUrl: imageUrl ?? this.imageUrl,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUrl': imageUrl,
      'title': title,
    };
  }

  factory Trends.fromMap(Map<String, dynamic> map) {
    return Trends(
      imageUrl: map['imageUrl'] as String,
      title: map['title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Trends.fromJson(String source) =>
      Trends.fromMap(json.decode(source) as Map<String, dynamic>);
}
