import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SurveyPage extends StatefulWidget {
  @override
  _SurveyPageState createState() => _SurveyPageState();
}

class _SurveyPageState extends State<SurveyPage> {
  final List<String> questions = [
    'Sosyal medya kullanımında saldırgan söylemlere maruz kaldınız mı?',
    'İnternette zorbalık içeren mesajlar aldınız mı?',
    'Dijital platformlarda gizliliğiniz ihlal edildi mi?',
    'Sosyal medya hesaplarınız ele geçirildi mi?',
    'İnternet üzerinden tehdit edildiniz mi?',
    'Çevrimiçi ortamda özel bilgileriniz ifşa edildi mi?',
    'Tanımadığınız kişilerden rahatsız edici mesajlar aldınız mı?',
    'Kişisel bilgileriniz izinsiz kullanıldı mı?',
    'Dijital platformlarda takip edildiniz mi?',
    'Sosyal medyada itibarınıza zarar verildi mi?',
  ];

  List<String?> answers = List.filled(10, null);

  void _showResults() {
    int evetCount = answers.where((answer) => answer == 'Evet').length;

    String message;
    if (evetCount >= 5) {
      message = 'Dijital şiddet hakkında bilgi ve yardım almak için anasayfadaki mücadele yöntemleri butonuna tıkla.';
    } else {
      message = 'Dijital şiddete her zaman dikkat etmelisin. Daha fazla bilgi için anasayfadaki mücadele yöntemleri butonuna tıkla.';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              child: Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildInfoTile(String question, int index) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      color: Colors.green[50],
      child: ListTile(
        title: Text(
          question,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.green[800],
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  answers[index] = 'Evet';
                });
              },
              child: Text('Evet', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: answers[index] == 'Evet' ? Colors.green : Colors.white,
              ),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  answers[index] = 'Hayır';
                });
              },
              child: Text('Hayır', style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: answers[index] == 'Hayır' ? Colors.green : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00695c),
      appBar: AppBar(
        backgroundColor: Color(0xff00695c),
        title: Text(
          'Dijital şiddete maruz kaldınız mı?',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.green[50],
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ...questions.asMap().entries.map((entry) {
            int index = entry.key;
            String question = entry.value;
            return buildInfoTile(question, index);
          }).toList(),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _showResults,
            child: Text('Bitir'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}