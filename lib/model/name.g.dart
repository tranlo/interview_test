// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameModel _$NameModelFromJson(Map<String, dynamic> json) {
  return NameModel(
    title: json['title'] as String,
    first: json['first'] as String,
    last: json['last'] as String,
  );
}

Map<String, dynamic> _$NameModelToJson(NameModel instance) => <String, dynamic>{
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };
