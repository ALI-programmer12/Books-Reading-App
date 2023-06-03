import 'package:flutter/material.dart';

class DummyContent {
  static List<BookModel> bookDate = [
    BookModel(
      bookId: '001',
      bookName: 'Think and Grow Rich',
      bookImage: 'assets/images/book7 think and rich.jpg',
      bookAuth: 'Napoleon Hill',
      bookPrice: 7200.50,
      bookPub: 'Abc',
      containerColor: Colors.grey[900],
      textColor: Colors.white,
    ),
    BookModel(
        bookId: '003',
        bookName: 'Harry Potter and the Deathly Hallows',
        bookImage: 'assets/images/book5 harry potter.jpg',
        bookAuth: 'J.K. Rowling',
        bookPrice: 6600.50,
        bookPub: 'Abc',
        containerColor: Colors.green[900],
        textColor: Colors.black),
    BookModel(
        bookId: '005',
        bookName: 'Rich Dad Poor Dad',
        bookImage: 'assets/images/rich-dad-poor-dad.jpg',
        bookAuth: 'Robert T.Kiyosaki',
        bookPrice: 3200.50,
        bookPub: 'Abc',
        containerColor: Colors.purple[900],
        textColor: Colors.white),
    BookModel(
        bookId: '004',
        bookName: 'Connie Steele',
        bookImage: 'assets/images/book4 building business.jpg',
        bookAuth: 'Arso3',
        bookPrice: 6200.50,
        bookPub: 'Abc',
        containerColor: Colors.white,
        textColor: Colors.black),
  ];
}

class BookModel {
  BookModel({
    this.bookId,
    this.bookName,
    this.bookImage,
    this.bookPrice,
    this.bookAuth,
    this.bookPub,
    this.containerColor,
    this.textColor,
  });
  String? bookId;
  String? bookName;
  String? bookAuth;
  String? bookPub;
  double? bookPrice;
  String? bookImage;
  Color? containerColor;
  Color? textColor;
}
