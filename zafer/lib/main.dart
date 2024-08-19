import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Stack(
          alignment: Alignment.center,
          children: [
            const Center(
              child: Text(
                'ZAFER GIDA',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              right: 0,
              child: Image.asset(
                'assets/logo/logo.png', // Ambleminizin dosya yolu
                height: 31,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: Color.fromARGB(255, 0, 0, 0),
            height: 1.0,
          ),
        ),
      ),
      body: const ProductCategories(),
    );
  }
}

class ProductCategories extends StatelessWidget {
  const ProductCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        buildCategoryCard(
            context, 'Dr.Oetker', 'assets/marka/droetker.png', 50, 30),
        buildCategoryCard(
            context, 'Olca Salça', 'assets/marka/olca.png', 50, 50),
        buildCategoryCard(
            context, 'Fersan Sirke', 'assets/marka/fersan.png', 50, 50),
        buildCategoryCard(
            context, 'Anadolu Ata Un', 'assets/marka/ulusoy.jpg', 50, 47),
        buildCategoryCard(
            context, 'Haskaymak Bal', 'assets/marka/haskaymak.jpg', 50, 30),
        buildCategoryCard(
            context, 'ESEMmat', 'assets/marka/esemmat.jpg', 50, 30),
        buildCategoryCard(
            context, 'Hasata Bakliyat', 'assets/marka/hasata.jpg', 50, 50),
        buildCategoryCard(context, "Fresh'n Soft Sağl. Ür.",
            "assets/marka/freshsoft.jpg", 50, 38),
        buildCategoryCard(
            context, 'Haspet Hasta bezi', 'assets/marka/haspet.png', 50, 18),
        buildCategoryCard(
            context, 'BorLine Temizlik', 'assets/marka/bor.png', 50, 50),
        buildCategoryCard(context, 'Vita Yağ', 'assets/marka/vita.jpg', 50, 40),
        buildCategoryCard(
            context, 'Birtadsan Helva', 'assets/marka/birtadsan.jpg', 60, 18),
        buildCategoryCard(
            context, 'Cricket Çakmak', 'assets/marka/cricket.jpg', 50, 50),
        buildCategoryCard(
            context, 'Kayseri Şeker', 'assets/marka/kayseriseker.png', 50, 30),
        buildCategoryCard(
            context, 'Has Zeytin', 'assets/marka/has.jpeg', 50, 50),
        buildCategoryCard(
            context, 'Procter Gamble', 'assets/marka/pg.png', 50, 50),
        // Diğer kategoriler...
      ],
    );
  }

  Widget buildCategoryCard(BuildContext context, String title, String imagePath,
      double width, double height) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(
          imagePath,
          width: width,
          height: height,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        onTap: () {
          if (title == 'Dr.Oetker') {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DrOetkerPage()),
            );
          }
        },
      ),
    );
  }
}

class DrOetkerPage extends StatelessWidget {
  const DrOetkerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dr.Oetker'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Yardımcılar Serisi'),
              Tab(text: 'Dekor Serisi'),
              Tab(text: 'Un Karışımları'),
              Tab(text: 'İçecekler-Sıvı Aroma Vericiler'),
              Tab(text: 'Glutensiz Ürünler'),
              Tab(text: 'Puding'),
              Tab(text: 'Sos-Jel'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CategoryProducts(
              products: [
                Product(
                    name: 'Aktif Maya',
                    imagePath:
                        'assets/ürünler/yardımcılar_serisi/aktif_maya.jpg',
                    price: 5.99),
                Product(
                    name: 'Ekşi Maya',
                    imagePath:
                        'assets/ürünler/yardımcılar_serisi/ekşi_maya.png',
                    price: 6.99),
                // Diğer ürünler...
              ],
            ),
            CategoryProducts(
              products: [
                Product(
                    name: 'Çikolata Parçaları Bitter',
                    imagePath:
                        'assets/ürünler/dekor_serisi/çikolata_parçaları_bitter.png',
                    price: 7.99),
                Product(
                    name: 'Çikolata Parçaları Sütlü',
                    imagePath:
                        'assets/ürünler/dekor_serisi/çikolata_parçaları_sütlü.jpg',
                    price: 8.49),
                // Diğer ürünler...
              ],
            ),
            CategoryProducts(
              products: [
                Product(
                    name: 'Çikolata Şelalesi',
                    imagePath:
                        'assets/ürünler/un_karışımları/Çikolata Şelalesi.png',
                    price: 10.99),
                Product(
                    name: 'Profiterol',
                    imagePath: 'assets/ürünler/un_karışımları/profiterol_1.png',
                    price: 11.49),
                // Diğer ürünler...
              ],
            ),
            CategoryProducts(
              products: [
                Product(
                    name: 'Çikolatalı Çilekli Milkshake',
                    imagePath:
                        'assets/ürünler/içecekler_sıvı_aroma_vericiler/çikolataçilekli.jpg',
                    price: 12.99),
                Product(
                    name: 'Çilekli Milkshake',
                    imagePath:
                        'assets/ürünler/içecekler_sıvı_aroma_vericiler/çilekli_milkshake.jpg',
                    price: 13.49),
                // Diğer ürünler...
              ],
            ),
            CategoryProducts(
              products: [
                Product(
                    name: 'Çikolatalı Sos',
                    imagePath:
                        'assets/ürünler/glutensiz_ürünler/glutensiz-cikolatali-sos.png',
                    price: 4.99),
                Product(
                    name: 'Glutensiz Ekmek Karışımı',
                    imagePath:
                        'assets/ürünler/glutensiz_ürünler/glutensiz-ekmek-karisimi.png',
                    price: 5.49),
                // Diğer ürünler...
              ],
            ),
            CategoryProducts(
              products: [
                Product(
                    name: 'Puding Bitter Çikolatalı',
                    imagePath:
                        'assets/ürünler/puding/Puding Bitter Çikolatalı.jpg',
                    price: 3.99),
                Product(
                    name: 'Puding Çikolata Parçalı',
                    imagePath:
                        'assets/ürünler/puding/Puding Çikolata Parçalı.jpg',
                    price: 4.49),
                // Diğer ürünler...
              ],
            ),
            CategoryProducts(
              products: [
                Product(
                    name: 'Beyaz Çikolatalı Sos',
                    imagePath:
                        'assets/ürünler/sos_jel/Beyaz Çikolatalı Sos.png',
                    price: 3.49),
                Product(
                    name: 'Bitter Çikolatalı Sos',
                    imagePath:
                        'assets/ürünler/sos_jel/Bitter Çikolatalı Sos.png',
                    price: 3.99),
                // Diğer ürünler...
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryProducts extends StatelessWidget {
  final List<Product> products;

  const CategoryProducts({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      shrinkWrap: true, // Eklenen özellik
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          elevation: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          FullScreenImagePage(imagePath: product.imagePath),
                    ),
                  );
                },
                child: AspectRatio(
                  aspectRatio: 1, // Kare şeklinde göstermek için
                  child: Image.asset(
                    product.imagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      product.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${product.price.toStringAsFixed(2)}TL',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imagePath;

  const FullScreenImagePage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Screen Image'),
      ),
      body: Center(
        child: InteractiveViewer(
          child: Image.asset(
            imagePath,
            fit: BoxFit.contain, // Resmin tam olarak sığmasını sağlar
          ),
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String imagePath;
  final double price;

  Product({required this.name, required this.imagePath, required this.price});
}
