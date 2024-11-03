import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DijitalGuvenlik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00695c),
      appBar: AppBar(
        title: const Text('Dijital Güvenlik',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
        backgroundColor: const Color(0xff004d40),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://r.resimlink.com/Rh1K8.jpeg?v=9ecbfd848baf0389697cbc0cbeeb91e9',
              fit: BoxFit.cover,
              width: double.nan,
              height: 250,
            ),
            SizedBox(height: 3),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Dijital güvenlik, kullanıcıların çevrim içi faaliyetlerini koruma sürecidir. '
                    'Bu güvenlik önlemleri, kişisel bilgilerin gizliliğini sağlamak, dijital kimlik hırsızlığını önlemek '
                    've siber saldırılara karşı koruma sağlamak amacıyla alınır.',
                style: TextStyle(color: Colors.white,  fontWeight: FontWeight.bold, fontSize: 16 ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ExpansionTile(
                leading: Icon(Icons.security, color: Colors.white),
                title: Text(
                  'Korunma yolları',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white12,
                collapsedIconColor: Colors.white,
                children: [
                  ListTile(
                    leading: Icon(Icons.lock, color: Colors.white),
                    title: Text(
                      "Güçlü Şifreler Kullanın",
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                        'Şifreleriniz en az 8 karakter uzunluğunda olmalı ve büyük-küçük harf, rakam ve özel karakter içermelidir.',
                        style: TextStyle(color: Colors.white70)
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user, color: Colors.white),
                    title: Text(
                      'İki Aşamalı Kimlik Doğrulama (2FA) Kullanın',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Ek güvenlik katmanı için iki aşamalı doğrulama etkinleştirin.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.warning, color: Colors.white),
                    title: Text(
                      'Şüpheli Linklere Tıklamayın',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'E-posta ve mesajlardaki bilinmeyen linklere tıklamadan önce dikkatli olun.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.vpn_key, color: Colors.white),
                    title: Text(
                      'Güvenli Ağlara Bağlanın',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Kamu Wi-Fi ağlarına bağlanırken dikkatli olun ve mümkün olduğunca VPN kullanın.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ExpansionTile(
                leading: Icon(Icons.tips_and_updates, color: Colors.white),
                title: Text(
                  'Dijital Güvenlik İpuçları',
                  style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                backgroundColor: Colors.white12,
                collapsedIconColor: Colors.white,
                children: [
                  ListTile(
                    leading: Icon(Icons.lock, color: Colors.white),
                    title: Text(
                      'Kişisel Bilgilerinizi Koruyun',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Sosyal medya hesaplarınızda kişisel bilgilerinizi paylaşırken dikkatli olun.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.privacy_tip, color: Colors.white),
                    title: Text(
                      'Gizlilik Ayarlarını Kontrol Edin',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Sosyal medya ve diğer çevrim içi platformlardaki gizlilik ayarlarınızı inceleyin ve gerektiğinde ayarlayın.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.security, color: Colors.white),
                    title: Text(
                      'Antivirüs Yazılımı Kullanın',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Cihazınızı zararlı yazılımlara karşı korumak için güvenilir bir antivirüs yazılımı kullanın.',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
      {required String title,
        required String subtitle,
        required IconData icon}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.white70)),
    );
  }
}