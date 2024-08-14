// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductApiModel _$ProductApiModelFromJson(Map<String, dynamic> json) =>
    ProductApiModel(
      id: json['_id'] as String?,
      productCategory: json['productCategory'] as String,
      productPrice: (json['productPrice'] as num).toDouble(),
      productSize: json['productSize'] as String,
      productColor: json['productColor'] as String,
      productDescription: json['productDescription'] as String,
      productImage: json['productImage'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$ProductApiModelToJson(ProductApiModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productCategory': instance.productCategory,
      'productPrice': instance.productPrice,
      'productSize': instance.productSize,
      'productColor': instance.productColor,
      'productDescription': instance.productDescription,
      'productImage': instance.productImage,
      'createdAt': instance.createdAt,
    };
