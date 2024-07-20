import 'dart:convert';

import 'package:equatable/equatable.dart';

class House extends Equatable {
  const House({
    required this.id,
    required this.image,
    required this.price,
    required this.bedrooms,
    required this.bathrooms,
    required this.size,
    required this.description,
    required this.zip,
    required this.city,
    required this.latitude,
    required this.longitude,
    required this.createdDate,
  });

  factory House.fromMap(Map<String, dynamic> map) {
    return House(
      id: map['id'] as int,
      image: map['image'] as String,
      price: map['price'] as int,
      bedrooms: map['bedrooms'] as int,
      bathrooms: map['bathrooms'] as int,
      size: map['size'] as int,
      description: map['description'] as String,
      zip: map['zip'] as String,
      city: map['city'] as String,
      latitude: map['latitude'] as int,
      longitude: map['longitude'] as int,
      createdDate: map['createdDate'] as String,
    );
  }

  factory House.fromJson(String source) =>
      House.fromMap(json.decode(source) as Map<String, dynamic>);
  final int id;
  final String image;
  final int price;
  final int bedrooms;
  final int bathrooms;
  final int size;
  final String description;
  final String zip;
  final String city;
  final int latitude;
  final int longitude;
  final String createdDate;

  House copyWith({
    int? id,
    String? image,
    int? price,
    int? bedrooms,
    int? bathrooms,
    int? size,
    String? description,
    String? zip,
    String? city,
    int? latitude,
    int? longitude,
    String? createdDate,
  }) {
    return House(
      id: id ?? this.id,
      image: image ?? this.image,
      price: price ?? this.price,
      bedrooms: bedrooms ?? this.bedrooms,
      bathrooms: bathrooms ?? this.bathrooms,
      size: size ?? this.size,
      description: description ?? this.description,
      zip: zip ?? this.zip,
      city: city ?? this.city,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      createdDate: createdDate ?? this.createdDate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'price': price,
      'bedrooms': bedrooms,
      'bathrooms': bathrooms,
      'size': size,
      'description': description,
      'zip': zip,
      'city': city,
      'latitude': latitude,
      'longitude': longitude,
      'createdDate': createdDate,
    };
  }

  String toJson() => json.encode(toMap());

  @override
  String toString() {
    return 'House(id: $id, image: $image, price: $price, bedrooms: $bedrooms, '
        ' bathrooms: $bathrooms, size: $size, description: $description,'
        ' zip: $zip, city: $city, latitude: $latitude, longitude: $longitude, '
        'createdDate: $createdDate)';
  }

  @override
  bool operator ==(covariant House other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.image == image &&
        other.price == price &&
        other.bedrooms == bedrooms &&
        other.bathrooms == bathrooms &&
        other.size == size &&
        other.description == description &&
        other.zip == zip &&
        other.city == city &&
        other.latitude == latitude &&
        other.longitude == longitude &&
        other.createdDate == createdDate;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        image.hashCode ^
        price.hashCode ^
        bedrooms.hashCode ^
        bathrooms.hashCode ^
        size.hashCode ^
        description.hashCode ^
        zip.hashCode ^
        city.hashCode ^
        latitude.hashCode ^
        longitude.hashCode ^
        createdDate.hashCode;
  }

  @override
  List<Object?> get props => [
        id,
        image,
        price,
        bedrooms,
        bathrooms,
        size,
        description,
        zip,
        city,
        latitude,
        longitude,
        createdDate,
      ];
}
