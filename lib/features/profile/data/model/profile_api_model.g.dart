// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileApiModel _$ProfileApiModelFromJson(Map<String, dynamic> json) =>
    ProfileApiModel(
      id: json['id'] as String?,
      fullName: json['_id'] as String,
      userName: json['userName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      email: json['email'] as String,
      userAddress: json['userAddress'] as String,
      userOptionalAddress: json['userOptionalAddress'] as String,
      userImage: json['userImage'] as String,
    );

Map<String, dynamic> _$ProfileApiModelToJson(ProfileApiModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      '_id': instance.fullName,
      'userName': instance.userName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'userAddress': instance.userAddress,
      'userOptionalAddress': instance.userOptionalAddress,
      'userImage': instance.userImage,
    };
