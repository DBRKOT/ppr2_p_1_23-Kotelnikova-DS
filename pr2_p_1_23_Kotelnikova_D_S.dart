import 'dart:convert';
import 'dart:io';
void main() {
  
  Directory('books').createSync(recursive: true);
  
  DateTime now = DateTime.now();

  String fileName = 'books/books_${now.year}-${now.month}-${now.day}.txt';
  File myFile = File(fileName);

  myFile.createSync();

  if (myFile.existsSync()) {
    print('Файл существует: $fileName');
  } else {
    print('Файл не существует: $fileName');
  }

  stdout.write('Введите название книги: ');
  String? title = stdin.readLineSync();

  stdout.write('Введите автора книги: ');
  String? author = stdin.readLineSync();

  stdout.write('Введите год издания книги: ');
  String? year = stdin.readLineSync();

  print('Название книги: $title');
  print('Автор книги: $author');
  print('Год издания книги: $year');

final myFilet=File('books.txt');
 myFile.writeAsStringSync('Название: $title\n Автор: $author\n Год: $year\n', mode: FileMode.append);
}

