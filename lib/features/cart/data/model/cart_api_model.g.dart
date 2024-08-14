// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartApiModel _$CartApiModelFromJson(Map<String, dynamic> json) => CartApiModel(
      id: json['_id'] as String?,
      products:
          ProductApiModel.fromJson(json['products'] as Map<String, dynamic>),
      designs: DesignApiModel.fromJson(json['designs'] as Map<String, dynamic>),
      quantity: (json['quantity'] as num).toInt(),
      productSize: json['productSize'] as String,
      productColor: json['productColor'] as String,
      customizePrice: (json['customizePrice'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$CartApiModelToJson(CartApiModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'products': instance.products,
      'designs': instance.designs,
      'quantity': instance.quantity,
      'productSize': instance.productSize,
      'productColor': instance.productColor,
      'customizePrice': instance.customizePrice,
      'total': instance.total,
    };
