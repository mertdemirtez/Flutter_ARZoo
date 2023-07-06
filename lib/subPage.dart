import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/ar_screen.dart';

class SubPage extends StatefulWidget {
  final String Title;
  const SubPage({Key? key, required this.Title, required String title}) : super(key: key);

  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          widget.Title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.star),
            color: isFavorite ? Colors.yellow : Colors.white,
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'images/main/kopek.png',
                  width: 250,
                  height: 300,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWithBackground(
                    text: '          Boyu:                                     15 – 110 cm  ',
                    backgroundColor: Colors.red,                
                    width: 400,
                    height: 40,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(height: 10),
                  TextWithBackground(
                    text: '          Yaşam Süresi:                          10 – 13 yıl   ',
                    backgroundColor: Colors.blue,
                    width: 400,
                    height: 40,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(height: 10),
                  TextWithBackground(
                    text: '         Ağırlığı:                                1,4 – 110 kg ',
                    backgroundColor: Colors.yellow,
                    width: 400,
                    height: 40,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(height: 10),
                  TextWithBackground( 
                    text: '          Gebelik süresi:                        58 – 68 gün  ',
                    backgroundColor: Colors.green,           
                    width: 400,
                    height: 40,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  SizedBox(height: 10),
                  TextWithBackground(
                    text: '         Yaşam Yeri:                                    Kara     ',
                    backgroundColor: Colors.orange,        
                    width: 400,
                    height: 40,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: Material(
                  elevation: 4.0,
                  child: Container(
                    width: 250,
                    height: 50,
                    color: Colors.blue,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ArScreen(),
                          ),
                        );
                      },
                      icon: Container(
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                        child: Icon(
                          Icons.view_in_ar,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      label: Text(
                        'AR Canlandır',
                        style: TextStyle(fontSize: 16),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(250.0),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWithBackground extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final double width;
  final double height;
  final BorderRadiusGeometry? borderRadius;

  const TextWithBackground({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.width,
    required this.height,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: borderRadius,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
 