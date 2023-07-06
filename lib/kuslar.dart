import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ar_screen.dart';
import 'package:flutter_application_1/subPage.dart';

class kuslar extends StatelessWidget {
  const kuslar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.white),
            hintText: "Hayvan Arama...",
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('baykus', 'Baykuş', '', context, color: Colors.blue),
                  getExpanded('muhabbet', 'Muhabbet Kuşu', '', context, color: Colors.red),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded(
                      'kartal', 'Kartal', '', context, color: Colors.green),
                  getExpanded(
                      'tavuk', 'Tavuk', '', context, color: Colors.orange),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('flamingo', 'Flamingo', '', context,
                      color: Colors.purple),
                  getExpanded('papagan', 'Papağan', '', context,
                      color: Colors.yellow),
                ],
              ),
            ),
          ],
        ),
      ),
     
    );
  }

  Expanded getExpanded(String imageName, String mainText, String subText,
      context, {required Color color}) {
    return Expanded(
      child: TextButton(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'images/main/$imageName.png',
                    height: 80.0,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  mainText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
              ],
            ),
          ),
          margin: const EdgeInsets.only(
              left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
          decoration: getBoxDecoration(color: color),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => SubPage(Title: mainText, title: '',)));
        },
      ),
    );
  }

  BoxDecoration getBoxDecoration({required Color color}) {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(),
      ],
      border: Border.all(
        color: color,
        width: 1.0,
      ),
    );
  }

 
}
