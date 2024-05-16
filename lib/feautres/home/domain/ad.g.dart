// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdImpl _$$AdImplFromJson(Map<String, dynamic> json) => _$AdImpl(
      uid: json['uid'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      imagePath: json['imagePath'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$AdImplToJson(_$AdImpl instance) => <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'description': instance.description,
      'imagePath': instance.imagePath,
      'url': instance.url,
    };
