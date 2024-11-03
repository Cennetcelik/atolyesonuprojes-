import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MucadeleYontemleri extends StatelessWidget {
  const MucadeleYontemleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mücadele Yöntemleri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dijital Şiddetle Mücadele Yöntemleri',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                'Dijital şiddetle başa çıkmak için aşağıdaki yöntemler uygulanabilir:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              _buildMethodSection(
                title: 'Farkındalık Yaratmak',
                description:
                'Dijital şiddetin varlığına dair farkındalık yaratmak, bireylerin bu konuda bilinçlenmesini sağlar. Eğitim programları ve seminerler düzenlenebilir.',
              ),
              const SizedBox(height: 16),
              _buildMethodSection(
                title: 'Güvenli İnternet Kullanımı',
                description:
                'Güvenli internet kullanımı hakkında bilgiler vererek bireylerin çevrimiçi davranışlarını güvenli hale getirmek önemlidir. Gizlilik ayarlarının kontrol edilmesi önerilir.',
              ),
              const SizedBox(height: 16),
              _buildMethodSection(
                title: 'Destek Alma',
                description:
                'Bireyler dijital şiddete maruz kaldıklarında, destek almak önemlidir. Aile, arkadaş veya profesyonel yardım aramak cesaretlendirilebilir.',
              ),
              const SizedBox(height: 16),
              _buildMethodSection(
                title: 'Hukuki Yolları Kullanma',
                description:
                'Dijital şiddet durumunda hukuki yollara başvurmak, suçluların cezasız kalmamasını sağlamak için önemlidir. İlgili makamlara başvurulmalıdır.',
              ),
              const SizedBox(height: 16),
              _buildMethodSection(
                title: 'Sosyal Medya Platformlarında Şikayet',
                description:
                'Dijital şiddete maruz kalan bireyler, yaşadıkları durumu sosyal medya platformlarına bildirerek bu tür davranışların önlenmesine katkı sağlayabilir.',
              ),
              const SizedBox(height: 16),
              const Text(
                'Unutulmamalıdır ki dijital şiddet, ciddi bir sorun olup, bu konuda toplumsal olarak duyarlı olunması gerekmektedir.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMethodSection({required String title, required String description}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.teal[800],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.white70, width: 1.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}