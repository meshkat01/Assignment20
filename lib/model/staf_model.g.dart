// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staf_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StafModelAdapter extends TypeAdapter<StafModel> {
  @override
  final int typeId = 0;

  @override
  StafModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StafModel(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, StafModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.department);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StafModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
