import 'dart:core';

import 'package:isar/isar.dart';

part 'login.g.dart';

@collection
class Login {
  Id id = Isar.autoIncrement;
  String? loginSite;
  String? loginUsername;
  String? loginPassword;
  DateTime? loginCreationDate;
  DateTime? loginLastEdited;
}
