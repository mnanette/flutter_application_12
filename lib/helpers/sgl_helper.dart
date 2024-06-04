import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class SqlHelper {
  Database? db;
  Future<void> createTables() async {
    try {
      await db?.execute("""
Create table if not exists category(
  id Integer Primary Key,
  name String,
)
""");
    } catch (e) {
      print('Error on creating table: $e');
    }
  }
}
