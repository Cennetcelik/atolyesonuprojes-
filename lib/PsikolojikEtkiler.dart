import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PsikolojikEtkiler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00695c),
      appBar: AppBar(
        title: Text('Dijital Şiddetin Psikolojik Etkileri',
          style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600),),

        backgroundColor: Color(0xff004d40),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://r.resimlink.com/jXiHb.jpg',
              fit: BoxFit.cover,
              width: double.maxFinite,
              height: 200,
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Dijital Şiddetin Psikolojik Etkileri',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ExpansionTile(
                leading: Icon(Icons.psychology, color: Colors.white),
                title: Text(
                  'Psikolojik Etkiler',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white12,
                collapsedIconColor: Colors.white,
                children: [
                  ListTile(
                    title: Text(
                      'Kaygı ve Stres',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Çevrim içi zorbalığa maruz kalan bireylerde yoğun kaygı ve stres görülmektedir.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Depresyon',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Dijital zorbalığa maruz kalmak bireylerde depresif duygulara yol açabilir.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Güven Eksikliği',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Dijital tehditler ve manipülasyonlar kişide güven eksikliğine neden olabilir.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Duygusal İzolasyon',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Dijital şiddete maruz kalmak, bireyleri sosyal ilişkilerinden izole edebilir.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Dijital şiddetin etkilerini en aza indirmek için farkındalık yaratmak ve destek aramak önemlidir.',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}