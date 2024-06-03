// lib/widgets/book_item.dart
import 'package:flutter/material.dart';
import 'package:perpus1/models/book.dart';
import 'package:perpus1/widgets/book_detail_page.dart';


class BookItem extends StatelessWidget {
  final Book book;

  BookItem(this.book);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff9DB2BF),
      child: ListTile(
        leading: Image.asset('assets/images/1.png'), // Gunakan Image.asset untuk menampilkan gambar dari aset lokal
        title: Text(book.title),
        subtitle: Text(book.author),
        
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookDetailPage(book: book),
            ),
          );
        },
      ),
    );
  }
}
