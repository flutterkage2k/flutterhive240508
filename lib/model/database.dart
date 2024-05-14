import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class NoteDatabse extends ChangeNotifier {
  // Initialize database
  static Future<void> initialize() async {
    final dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    Hive.initFlutter('hive_db');
  }
}
