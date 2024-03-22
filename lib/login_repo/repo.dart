import 'package:isar/isar.dart';
import 'package:passieman/login_repo/login.dart';
import 'package:path_provider/path_provider.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<void> saveLogin(Login newLogin) async {
    final isar = await db;
    isar.writeTxn(() => isar.logins.put(newLogin));
  }

  Future<void> deleteLogin(Id loginid) async {
    final isar = await db;
    isar.writeTxn(() => isar.logins.delete(loginid));
  }

  Future<List<Login>> loadAllLogins() async {
    final isar = await db;
    final logins = isar.logins.where().sortByLoginCreationDate().findAll();
    return logins;
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([LoginSchema],
          directory: dir.path, inspector: true);
    }
    return Future.value(Isar.getInstance());
  }
}
