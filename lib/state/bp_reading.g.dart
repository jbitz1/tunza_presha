// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bp_reading.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BPReadingImpl _$$BPReadingImplFromJson(Map<String, dynamic> json) =>
    _$BPReadingImpl(
      systole: json['systole'] as String?,
      diastole: json['diastole'] as String?,
      pulse: json['pulse'] as String?,
      note: json['note'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$BPReadingImplToJson(_$BPReadingImpl instance) =>
    <String, dynamic>{
      'systole': instance.systole,
      'diastole': instance.diastole,
      'pulse': instance.pulse,
      'note': instance.note,
      'date': instance.date,
    };
