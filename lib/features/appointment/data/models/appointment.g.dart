// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentModel _$AppointmentModelFromJson(Map<String, dynamic> json) =>
    AppointmentModel(
      id: json['_id'] as String,
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      doctor: json['doctor'] as String,
      patient: json['patient'] as String,
    );

Map<String, dynamic> _$AppointmentModelToJson(AppointmentModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'date': instance.date.toIso8601String(),
      'doctor': instance.doctor,
      'patient': instance.patient,
    };