// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:book_breeze/src/book_type.dart';
import 'package:book_breeze/src/trend_model.dart';

class BookResults extends Trends {
  final BookType bookType;
  final String author;
  final String year;
  final String publisher;
  BookResults({
    required this.bookType,
    required this.author,
    required this.year,
    required this.publisher,
    required super.imageUrl,
    required super.title,
  });
  @override
  BookResults copyWith(
      {BookType? bookType,
      String? author,
      String? year,
      String? publisher,
      String? title,
      String? imageUrl}) {
    return BookResults(
      bookType: bookType ?? this.bookType,
      author: author ?? this.author,
      year: year ?? this.year,
      publisher: publisher ?? this.publisher,
      imageUrl: imageUrl ?? this.imageUrl,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bookType': bookType,
      'author': author,
      'year': year,
      'publisher': publisher,
    };
  }

  factory BookResults.fromMap(Map<String, dynamic> map) {
    return BookResults(
      bookType: ['bookType'] as BookType,
      author: map['author'] as String,
      year: map['year'] as String,
      publisher: map['publisher'] as String,
      imageUrl: map['imageUrl'] as String,
      title: map['title'] as String,
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory BookResults.fromJson(String source) =>
      BookResults.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'BookResults(bookType: $bookType, author: $author, year: $year, publisher: $publisher)';
  }

  @override
  bool operator ==(covariant BookResults other) {
    if (identical(this, other)) return true;

    return other.bookType == bookType &&
        other.author == author &&
        other.year == year &&
        other.publisher == publisher;
  }

  @override
  int get hashCode {
    return bookType.hashCode ^
        author.hashCode ^
        year.hashCode ^
        publisher.hashCode;
  }
}
