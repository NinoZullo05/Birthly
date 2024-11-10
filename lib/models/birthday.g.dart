// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'birthday.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BirthdayAdapter extends TypeAdapter<Birthday> {
  @override
  final int typeId = 0;

  @override
  Birthday read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Birthday(
      name: fields[0] as String,
      date: fields[1] as DateTime,
      age: fields[2] as int,
      notes: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Birthday obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.date)
      ..writeByte(2)
      ..write(obj.age)
      ..writeByte(3)
      ..write(obj.notes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BirthdayAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
