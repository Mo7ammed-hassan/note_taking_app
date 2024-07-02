// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SectionsModelAdapter extends TypeAdapter<SectionsModel> {
  @override
  final int typeId = 2;

  @override
  SectionsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SectionsModel(
      title: fields[0] as String,
      image: fields[1] as Uint8List,
      size: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SectionsModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.image)
      ..writeByte(2)
      ..write(obj.size);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SectionsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
