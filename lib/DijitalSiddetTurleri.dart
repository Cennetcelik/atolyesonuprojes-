import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class DijitalSiddetTurleri extends StatelessWidget {
  const DijitalSiddetTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dijital Şiddet Türleri'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Dijital Şiddet Türleri',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Dijital şiddet, bireylerin internet ve dijital platformlar aracılığıyla maruz kaldığı çeşitli olumsuz davranışları ifade eder. '
                    'Bu tür şiddet, psikolojik, sosyal ve hukuksal boyutlarıyla önemli bir sorundur. Aşağıda, dijital şiddet türlerine dair bazı örnekler verilmiştir:',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              _buildTypeSection(
                title: 'Siber Zorbalık',
                description: 'Bireylerin, diğer bireylere internet üzerinden sürekli olarak zarar vermek amacıyla yapılan davranışlardır. Bu, alay etme, tehdit etme veya utandırma gibi şekillerde ortaya çıkabilir.',
              ),
              const SizedBox(height: 16),
              _buildTypeSection(
                title: 'Gizliliğin İhlali',
                description: 'Bireylerin özel bilgilerine izinsiz erişim sağlanması veya bu bilgilerin kötüye kullanılmasıdır. Örneğin, birinin fotoğraflarının izni olmadan paylaşılması.',
              ),
              const SizedBox(height: 16),
              _buildTypeSection(
                title: 'Dijital Taciz',
                description: 'Bir bireyin istenmeyen ve rahatsız edici bir şekilde diğerine sürekli olarak mesaj göndermesi, araması veya sosyal medya üzerinden rahatsız etmesidir.',
              ),
              const SizedBox(height: 16),
              _buildTypeSection(
                title: 'Kandırma ve Dolandırıcılık',
                description: 'Bireylerin, sahte kimlikler veya dolandırıcılık yöntemleri kullanılarak kandırılmasıdır. Bu durum, maddi kayıplara veya kişisel bilgilerinin çalınmasına neden olabilir.',
              ),
              const SizedBox(height: 16),
              const Text(
                'Dijital şiddet, ciddiye alınması gereken bir konudur. Toplum olarak bu tür şiddetlere karşı duyarlı olmak ve gerekli önlemleri almak önemlidir.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTypeSection({required String title, required String description}) {
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