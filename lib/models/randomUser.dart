import 'package:flutter/foundation.dart';

@immutable
class RandomUser {
  const RandomUser({
    required this.name,
    required this.email,
    required this.phone,
    required this.picture,
  });

  final Name name;
  final String email;
  final String phone;
  final Picture picture;

  factory RandomUser.fromJson(Map<String, dynamic> json) => RandomUser(
        name: Name.fromJson(json['name'] as Map<String, dynamic>),
        email: json['email'] as String,
        phone: json['phone'] as String,
        picture: Picture.fromJson(json['picture'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'name': name.toJson(),
        'email': email,
        'phone': phone,
        'picture': picture.toJson(),
      };
}

@immutable
class Name {
  const Name({
    required this.title,
    required this.first,
    required this.last,
  });

  final String title;
  final String first;
  final String last;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String);

  Map<String, dynamic> toJson() =>
      {'title': title, 'first': first, 'last': last};

  @override
  String toString() => '$title $first $last';
}

@immutable
class Picture {
  const Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  final String large;
  final String medium;
  final String thumbnail;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
      large: json['large'] as String,
      medium: json['medium'] as String,
      thumbnail: json['thumbnail'] as String);

  Map<String, dynamic> toJson() =>
      {'large': large, 'medium': medium, 'thumbnail': thumbnail};
}
