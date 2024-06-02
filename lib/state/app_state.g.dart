// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppStateImpl _$$AppStateImplFromJson(Map<String, dynamic> json) =>
    _$AppStateImpl(
      authState: json['authState'] == null
          ? null
          : AuthState.fromJson(json['authState'] as Map<String, dynamic>),
      bpReadingsState: json['bpReadingsState'] == null
          ? null
          : BPReadingsState.fromJson(
              json['bpReadingsState'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppStateImplToJson(_$AppStateImpl instance) =>
    <String, dynamic>{
      'authState': instance.authState,
      'bpReadingsState': instance.bpReadingsState,
    };
