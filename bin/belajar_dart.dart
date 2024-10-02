import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;
import 'dart:io'; //library untuk menerima input

void main(List<String> arguments) {
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');
}
