import 'dart:developer';

import 'package:sqflite/sqflite.dart';

import 'package:path_provider/path_provider.dart';

class DatabaseProvider {
  // Створення змінної _databaseService типу DatabaseService, яка буде представляти себе саму сервіс
  static final DatabaseProvider _databaseService = DatabaseProvider._internal();

  // Створення фабричного конструктора, який повертає створений внутрішній об'єкт _databaseService
  factory DatabaseProvider() => _databaseService;

  // Приватний конструктор для внутрішнього використання
  DatabaseProvider._internal();

  // Оголошення змінної _database для зберігання бази даних
  static Database? _database;

  // Асинхронний метод database, який повертає базу даних. Якщо база даних вже існує, вона повертається,
  // в іншому випадку викликається initDatabase() для ініціалізації нової бази даних
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final getDirectory = await getApplicationDocumentsDirectory();
    String path = getDirectory.path + '/activities.db';
    log(path);
    return await openDatabase(path, onCreate: _onCreate, version: 1);
  }

  void _onCreate(Database db, int version) async {
    try {
      await db.execute('''CREATE TABLE Activities(
      id INT AUTO_INCREMENT PRIMARY KEY, 
      date DATE NOT NULL,
      image BLOB,
      title VARCHAR(255) NOT NULL, 
      description TEXT,
      time TIME)
      ''');
    } catch (e) {
      log("ACTIVITIES TABLE IS NOT CREATED");
      log("$e");
    }

    log('ACTIVITIES TABLE CREATED');
  }
}
