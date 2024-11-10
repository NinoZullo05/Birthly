import 'package:hive/hive.dart';

part 'birthday.g.dart';

@HiveType(typeId: 0)
class Birthday extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late DateTime date;

  @HiveField(2)
  late int age;

  @HiveField(3)
  String? notes;

  Birthday({
    required this.name,
    required this.date,
    required this.age,
    this.notes,
  });
}