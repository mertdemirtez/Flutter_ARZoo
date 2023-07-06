import 'package:flutter/material.dart';
import 'package:flutter_application_1/baliklar.dart';
import 'package:flutter_application_1/memeliler.dart';
import 'package:flutter_application_1/kurbagalar.dart';
import 'package:flutter_application_1/kuslar.dart';
import 'package:flutter_application_1/surungenler.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.white),
            hintText: "Tür Arama...",
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded(
                    'balik',
                    'Balıklar',
                    '34.000 Çeşit',
                    context,
                    color: Colors.blue,
                    page: const baliklar(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded(
                    'memeliler',
                    'Memeliler',
                    '6.400 Çeşit',
                    context,
                    color: Colors.red,
                    page: const memeliler(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded(
                    'kurbagalar',
                    'Kurbağalar',
                    '7.000 Çeşit',
                    context,
                    color: Colors.green,
                    page: const kurbagalar(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded(
                    'kuslar',
                    'Kuşlar',
                    '10.000 Çeşit',
                    context,
                    color: Colors.orange,
                    page: const kuslar(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded(
                    'surungenler',
                    'Sürüngenler',
                    '10.000 Çeşit',
                    context,
                    color: Colors.purple,
                    page: const surungenler(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          getBottomNavigationItem('Ana Sayfa', Icons.home),
          getBottomNavigationItem('Favorilerim', Icons.star),
          getBottomNavigationItem('Hesabım', Icons.people_alt_sharp),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }

  Expanded getExpanded(
    String imageName,
    String mainText,
    String subText,
    BuildContext context, {
    required Color color,
    required Widget page,
  }) {
    return Expanded(
      child: TextButton(
        child: Container(
          margin: const EdgeInsets.only(
            left: 10.0,
            top: 10.0,
            right: 10.0,
            bottom: 10.0,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          decoration: getBoxDecoration(color: color),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'images/main/$imageName.png',
                height: 100,
                width: 60,
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        mainText,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        subText,
                        style: TextStyle(
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          );
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

  BottomNavigationBarItem getBottomNavigationItem(
    String title,
    IconData IconName,
  ) {
    return BottomNavigationBarItem(
      icon: Icon(
        IconName,
        size: 35.0,
      ),
      label: "$title",
    );
  }
}
