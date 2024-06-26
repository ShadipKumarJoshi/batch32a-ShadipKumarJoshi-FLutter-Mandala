import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'design_api_model.g.dart';

@JsonSerializable()
class DesignApiModel extends Equatable {
  @JsonKey(name: '_id')
  final String id; 
  final String designName;
  final double designPrice;
  final String designCategory;
  final String designDescription;
  final String designImage;
  final DateTime createdAt; 
  final String createdBy; 

  const DesignApiModel({
    required this.id,   
    required this.designName,
    required this.designPrice,
    required this.designCategory,
    required this.designDescription,
    required this.designImage,
    required this.createdAt,
    required this.createdBy,
  });

  factory DesignApiModel.fromJson(Map<String, dynamic> json) =>
      _$DesignApiModelFromJson(json);

  Map<String, dynamic> toJson() => _$DesignApiModelToJson(this);

  @override
  List<Object?> get props => [
        id,  
        designName,
        designPrice,
        designCategory,
        designDescription,
        designImage,
        createdAt,
        createdBy,
      ];
}
