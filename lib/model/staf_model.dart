import 'package:hive/hive.dart';
part 'staf_model.g.dart';
@HiveType(typeId: 0)
class StafModel{
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String department;

  StafModel(this.id, this.name, this.department);


}