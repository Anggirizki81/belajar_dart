import 'package:belajar_dart/belajar_dart.dart' as belajar_dart;
import 'dart:io'; //library untuk menerima input

void main(List<String> arguments) {
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('usia Anda : ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');

}

// konversi tipe data
void konversi() {
  // String -> int
  var eleven = int.parse('11');
  print(eleven.runtimeType);

  // String -> double
  var elevenPointTwo = double.parse('11.2');
  print(elevenPointTwo.runtimeType);

  // int -> String
  var elevenAsString = 11.toString();
  print(elevenAsString.runtimeType);

  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print(piAsString.runtimeType);
}

//list, map dan set
void collection(){
  //LIST
  var numberList = [1, 2, 3, 4, 5];
  List dynamicList = [1, 'Dicoding', true];
  dynamicList.add("data baru");  //tambh data ke akhir list
  dynamicList.insert(0, 'Programming'); //tambh data di index ke 0
  dynamicList.forEach((s) => print(s));  //print list
  dynamicList[1] = 'Application'; //mengubah data index ke 1
  dynamicList.remove('Programming'); //menghapus 
  var gabungan = [...numberList, ...dynamicList]; //mengabungkan list

  //SET
  var setA = {1, 2, 4, 5, 4, 2};
  var setB = {1, 5, 7};
  Set<int> anotherSet = new Set.from(setA); //menghilangkan data doble
  print(anotherSet);

  //untuk mengetahui gabungan dan irisan dari 2 (dua) buah Set
  var union = setA.union(setB);
  var intersection = setA.intersection(setB);
  print("union: $union");
  print("intersection: $intersection");
  /*Output:
  union: {1, 2, 4, 5, 7}
  intersection: {1, 5} */

  //MAP, yakni sebuah collection yang dapat menyimpan data dengan format key-value
   var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };
  var mapKeys = capital.keys; //menampilkan key
  print("mapKeys: $mapKeys");

  var mapValues = capital.values; //menampilkan value
  print("mapValues: $mapValues");
  capital['New Delhi'] = 'India'; //tambah data
  print(capital['Jakarta']);
}