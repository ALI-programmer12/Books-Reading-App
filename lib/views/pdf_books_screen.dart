import 'package:flutter/material.dart';
import 'package:login_page/utils/dummy_content.dart';

class pdfBooks extends StatefulWidget {
  @override
  State<pdfBooks> createState() => _pdfBooksState();
}

class _pdfBooksState extends State<pdfBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Books Store',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
            itemCount: DummyContent.bookDate.length,
            itemBuilder: (BuildContext context, int index) {
              return SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        child: Image.asset(
                          DummyContent.bookDate[index].bookImage!,
                          width: 180,
                          height: 250,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 220,
                      width: 170,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text(
                            //   'Name: ${DummyContent.bookDate[index].bookName!}',
                            //   style: TextStyle(fontSize: 20, color: Colors.white),
                            // ),
                            Text(
                              'Price: ${DummyContent.bookDate[index].bookPrice!}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: DummyContent
                                      .bookDate[index].containerColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BookId: ${DummyContent.bookDate[index].bookId!}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: DummyContent
                                      .bookDate[index].containerColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Author: ${DummyContent.bookDate[index].bookAuth!}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: DummyContent
                                      .bookDate[index].containerColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            Text(
                              'Publisher: ${DummyContent.bookDate[index].bookPub!}',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: DummyContent
                                      .bookDate[index].containerColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: DummyContent
                                      .bookDate[index].containerColor,
                                  borderRadius: BorderRadius.circular(7)),
                              height: 40,
                              width: 90,
                              child: Center(
                                child: Text(
                                  'Buy Now',
                                  style: TextStyle(
                                    color:
                                        DummyContent.bookDate[index].textColor,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
