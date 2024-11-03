import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InfoCardsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00695c),
      body: Padding(
        padding: const EdgeInsets.all(16.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Başlık ve metin için arka plan ve stil düzenlemesi
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal[900],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      'ALO 166',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[50],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Siber zorbalığa karşı en kolay uygulanabilecek yol Bilişim Teknolojileri Kurumu’na ait olan '
                          'ALO 166 nolu İnternet Bilgi İhbar Hattı’nı arayıp nasıl bir durumla karşı karşıya olunduğunu '
                          'bildirmek. Bu hat aranarak karakol veya savcılıklara nasıl ulaşılacağı konusunda da yönlendirme alınabilir. '
                          'Bunun dışında doğrudan karakollara veya Cumhuriyet Başsavcılığı’na şikayette bulunarak da suç içeren siber zorbalık '
                          'fiilleri bildirilebilir.',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Dijital şiddet dışında diğer şiddet türleri için başvurulabilecek kurum ve kuruluşlar ile alakalı bilgileri aşağıda bulabilirsiniz.',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              _buildInfoSection(
                title: 'Acil Telefon Hatları',
                items: [
                  'ALO 155 Polis İmdat',
                  'ALO 156 Jandarma İmdat',
                  '112 ACİL',
                  '0212 656 96 96 Aile İçi Şiddet Acil Yardım Hattı',
                  'ALO 183 Sosyal Destek Hattı (7/24 Ücretsiz Hizmet) Aile, Kadın, Çocuk ve Özürlü Sosyal Hizmet Danışma Hattı',
                  '112 ACİL Çağrı Merkezi',
                ],
              ),
              SizedBox(height: 16),
              _buildInfoSection(
                title: 'Mobil Uygulama',
                items: [
                  'Şiddet İhbar Mobil Uygulaması',
                  'Kadın Destek Sistemi (KADES)',
                ],
              ),
              SizedBox(height: 16),
              _buildInfoSection(
                title: 'Danışma, destek, konukevi (barınma) ve maddi yardım için:',
                items: [
                  'Aile ve Sosyal Hizmetler İl Müdürlüğü (konukevi hizmeti, destek ve danışmanlık)',
                  'Şiddet Önleme ve İzleme Merkezleri (ŞÖNİM)',
                  'Sosyal Hizmet Merkezi (Şiddetle Mücadele İrtibat Noktası)',
                  'Sivil Toplum Örgütleri Konukevi Hizmeti, Destek ve Danışmanlık, Ayni-Maddi Yardım',
                  'Barolar ve Baroya Bağlı Kadın Hakları Merkezleri ile Adli Yardım Büroları',
                  'Belediyeler (konukevi hizmeti, destek ve danışmanlık, ayni-maddi yardım)',
                  'Valilik, Kaymakamlık',
                ],
              ),
              SizedBox(height: 16),
              _buildInfoSection(
                title: 'Şiddete maruz kalındığında ya da risk altındayken başvurulabilecek kurum ve kuruluşlar:',
                items: [
                  'Valilik - Kaymakamlık',
                  'Polis Merkezi',
                  'Jandarma Karakolu',
                  'Adli Makamlar (Cumhuriyet Başsavcılığı ve Aile Mahkemeleri, Adli Destek ve Mağdur Hizmetleri Müdürlüğü (ADM))',
                  'Aile ve Sosyal Hizmetler İl Müdürlükleri',
                  'Şiddet Önleme ve İzleme Merkezleri (ŞÖNİM)',
                  'Sosyal Hizmet Merkezi (Şiddetle Mücadele İrtibat Noktası)',
                  'Sağlık Kuruluşları',
                  'Acil Telefon',
                ],
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () => print('Open URL'),
                child: Text(
                  'Aile ve Sosyal hizmetler',
                  style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection({required String title, required List<String> items}) {
    return Container(
      padding: EdgeInsets.all(12),
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
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 15),
          ...items.map((item) => BulletPoint(text: item)).toList(),
        ],
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyle(color: Colors.white, fontSize: 16)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}