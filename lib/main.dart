import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import "DijitalGuvenlik.dart";
import "MucadeleYontemleri.dart";
import "DijitalSiddetTurleri.dart";
import "PsikolojikEtkiler.dart";
import "SurveyPage.dart";
import "InfoCardsPage.dart";

Future<String> downloadImage(String imagePath) async {
  final storageRef = FirebaseStorage.instance.ref();
  final imageRef = storageRef.child(imagePath);

  try {
    final downloadUrl = await imageRef.getDownloadURL();
    return downloadUrl;
  } catch (e) {
    print('Resim indirme hatası: $e');
    return '';
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Firebase App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    HomeScreen(),
    SurveyPage(),
    InfoCardsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xff00695c),
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color(0xff00695c),
        buttonBackgroundColor: Colors.white54,
        height: 60,
        index: _selectedIndex,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.black),
          Icon(Icons.poll, size: 30, color: Colors.black),
          Icon(Icons.info, size: 30, color: Colors.black),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  CustomButton({required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF81C784),
        minimumSize: Size(120, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00695c),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              "https://www.cybermagonline.com/img/sayfa/resim.png",
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dijital Şiddet Nedir?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Dijital şiddet, teknoloji kullanılarak gerçekleştirilen psikolojik ve duygusal saldırılar bütünüdür. Bu şiddet türü, sosyal medya, mesajlaşma uygulamaları veya e-posta gibi dijital platformlarda yaygındır. Aşağıdaki sayfalardan dijital şiddet hakkında daha fazla bilgiye ulaşabilirsiniz.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CustomButton(
                    text: 'Dijital Şiddet Türleri',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DijitalSiddetTurleri()),
                      );
                    },
                  ),
                  CustomButton(
                    text: 'Dijital Güvenlik',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DijitalGuvenlik()),
                      );
                    },
                  ),
                  CustomButton(
                    text: 'Psikolojik Etkileri',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PsikolojikEtkiler()),
                      );
                    },
                  ),
                  CustomButton(
                    text: 'Mücadele Yöntemleri',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MucadeleYontemleri()),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}








