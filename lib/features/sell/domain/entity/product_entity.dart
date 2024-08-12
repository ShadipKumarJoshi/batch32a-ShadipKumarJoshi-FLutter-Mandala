import 'package:equatable/equatable.dart';

class ProductEntity extends Equatable {
  final String? id;
  final String productCategory;
  final double productPrice;
  final String productSize;
  final String productColor;
  final String productDescription;
  final String productImage;
  final String createdAt;

  ProductEntity({
    required this.id, 
    required this.productCategory, 
    required this.productPrice, 
    required this.productSize, 
    required this.productColor, 
    required this.productDescription, 
    required this.productImage, 
    required this.createdAt
    });
    
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
