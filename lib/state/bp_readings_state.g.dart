// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bp_readings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BPReadingsStateImpl _$$BPReadingsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$BPReadingsStateImpl(
      currentReading: json['currentReading'] == null
          ? null
          : BPReading.fromJson(json['currentReading'] as Map<String, dynamic>),
      userReadings: (json['userReadings'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : BPReading.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BPReadingsStateImplToJson(
        _$BPReadingsStateImpl instance) =>
    <String, dynamic>{
      'currentReading': instance.currentReading,
      'userReadings': instance.userReadings,
    };
