import 'package:equatable/equatable.dart';
import 'package:final_assignment/features/sell/domain/entity/product_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_api_model.g.dart';

final productApiModelProvider = Provider<ProductApiModel>((ref) {
  return const ProductApiModel.empty();
});

@JsonSerializable()
class ProductApiModel extends Equatable {
  @JsonKey(name: '_id')
  final String? id;
  final String productCategory;
  final double productPrice;
  final String productSize;
  final String productColor;
  final String productDescription;
  final String productImage;
  final String createdAt;

  const ProductApiModel({
    required this.id,
    required this.productCategory, 
    required this.productPrice, 
    required this.productSize, 
    required this.productColor, 
    required this.productDescription, 
    required this.productImage, 
    required this.createdAt
  });

  // Empty constructor
  const ProductApiModel.empty()
      : id = '',
        productCategory = '',
        productPrice = 0.0,
        productSize = '',
        productColor = '',
        productDescription = '',
        productImage = '',
        createdAt = '';
        

  factory ProductApiModel.fromJson(Map<String, dynamic> json) =>
      _$ProductApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductApiModelToJson(this);

// To entity
  ProductEntity toEntity() {
    return ProductEntity(
      id: id,
      productCategory: productCategory,
      productPrice: productPrice,
      productSize: productSize,
      productColor: productColor,
      productDescription: productDescription,
      productImage: productImage,
      createdAt: createdAt,
      
    );
  }

  // From entity
  factory ProductApiModel.fromEntity(ProductEntity entity) {
    return ProductApiModel(
      id: entity.id,
      productCategory: entity.productCategory,
      productPrice: entity.productPrice,
      productSize: entity.productSize,
      productColor: entity.productColor,
      productDescription: entity.productDescription,
      productImage: entity.productImage,
      createdAt: entity.createdAt,
      
    );
  }

  // To list of entity
  List<ProductEntity> toEntities(List<ProductApiModel> products) {
    return products.map((product) => product.toEntity()).toList();
  }

  // From list of entity
  List<ProductApiModel> fromEntities(List<ProductEntity> products) {
    return products.map((product) => ProductApiModel.fromEntity(product)).toList();
  }

  @override
  List<Object?> get props => [
        id,
        productCategory,
        productPrice,
        productSize,
        productColor,
        productDescription,
        productImage,
        createdAt
      ];
}
