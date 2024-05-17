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
      adDetails: (json['adDetails'] as List<dynamic>?)
              ?.map((e) => AdDetails.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AdImplToJson(_$AdImpl instance) => <String, dynamic>{
      'uid': instance.uid,
      'title': instance.title,
      'description': instance.description,
      'imagePath': instance.imagePath,
      'url': instance.url,
      'adDetails': instance.adDetails,
    };

_$AdDetailsImpl _$$AdDetailsImplFromJson(Map<String, dynamic> json) =>
    _$AdDetailsImpl(
      timesClicked: (json['timesClicked'] as num).toInt(),
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$AdDetailsImplToJson(_$AdDetailsImpl instance) =>
    <String, dynamic>{
      'timesClicked': instance.timesClicked,
      'userId': instance.userId,
    };
