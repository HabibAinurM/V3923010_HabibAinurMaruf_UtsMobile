import 'package:flutter/material.dart';

void main() {
  runApp(Alif());
}

class Alif extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alif Catering',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 244, 95, 107),
      ),
      home: LoginPage(),
    );
  }
}

// Halaman Login
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            Text(
              'AlifCatering',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/logo.png', // Ganti dengan path gambar Anda
              height: 200, // Tinggi gambar
            ),
            SizedBox(height: 20),
            Text(
              'Dari Dapur Kami ke Meja Anda, Penuh Cinta',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50  ),
            SizedBox(
              width: 50, // Atur lebar tombol
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.blue, // Warna latar belakang tombol
                  padding: EdgeInsets.symmetric(vertical: 20), // Padding vertikal
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CatalogPage()),
                  );
                },
                child: Text('Log in'),
              ),
            ),
            TextButton(
              onPressed: () {
                
              },
              child: Text('Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}


// Halaman Katalog
class CatalogPage extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => takeawayPage()),
                      );
                    },
                    child: ServiceCard(
                      title: 'Paket Hajatan',
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSx4gRlOqtRj5xZ0XPazEhSY_LnoxjZlMbMZQ&s', // Ganti dengan URL gambar dari internet
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => dineinPage()),
                      );
                    },
                    child: ServiceCard(
                      title: 'Paket Harian',
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEHbjJT3PVl-0hsfBgubivC6m3GFoSdiYQQw&s', // Ganti dengan URL gambar dari internet
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationButtons(),
    );
  }
}


// Halaman Service Takeaway
class takeawayPage extends StatelessWidget {
  final List<MenuItem> takeawayMenu = [
    MenuItem(
      title: 'Nasi box',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScOVHJnxhfm6dvktLMB7KGPqRpGSac8_loCw&s',
      description: 'nasi, ayam, capcay, mie, krupuk',
      price: 'Rp 20,000',
    ),
    MenuItem(
      title: 'Snack box',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTecLPszIOngSrp4-w4l394M5AMtJWd7aMjw&s',
      description: 'snack isi 2 + air',
      price: 'Start Rp 5,000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Hajatan'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: takeawayMenu.length,
        itemBuilder: (context, index) {
          return MenuCard(menuItem: takeawayMenu[index]);
        },
      ),
      bottomNavigationBar: NavigationButtons(),
    );
  }
}

// Halaman dine in
class dineinPage extends StatelessWidget {
  final List<MenuItem> dineinMenu = [
    MenuItem(
      title: 'Paket Makan Pagi',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScAE6Zv1vMB-Zt3egGxUNyw2YuJNPtZcjwlw&s',
      description: 'nasi kuning,ayam,perkedel,sambel',
      price: 'Rp 30,000',
    ),
    MenuItem(
      title: 'Paket Makan Siang',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9S1HJp4pRQfxQ8xf407uaDivlkVTjd0PTDw&s',
      description: 'nasi, sayur, udang, krupuk',
      price: 'Rp 35,000',
    ),
    MenuItem(
      title: 'Paket Makan Malam',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4L2u2EG6LlXjkOm8BHO8VJm-5Dz5Mj3SuPw&s',
      description: 'nasi goreng, acar, telur, krupuk',
      price: 'Rp 45,000',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Harian'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: dineinMenu.length,
        itemBuilder: (context, index) {
          return MenuCard(menuItem: dineinMenu[index]);
        },
      ),
      bottomNavigationBar: NavigationButtons(),
    );
  }
}

// Halaman Promo
class PromoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Promo'),
      ),
      body: Center(
        child: Text('Ini adalah halaman promo.'),
      ),
      bottomNavigationBar: NavigationButtons(),
    );
  }
}


//Profil
class ProfilePage extends StatelessWidget {
  final String name = "Habib Ainur Ma'ruf";
  final String program = "Teknik Informatika";
  final String university = "Universitas Sebelas Maret";
  final String image = "assets/habib.JPG"; // Ganti dengan path gambar Anda

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50, // Ukuran lingkaran
              backgroundImage: AssetImage(image), // Mengambil foto dari aset lokal
              backgroundColor: Colors.grey[300], // Warna latar belakang saat foto tidak tersedia
            ),
            SizedBox(height: 20), // Spasi antara foto dan teks
            Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              program,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            Text(
              university,
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationButtons(),
    );
  }
}



// Model data menu
class MenuItem {
  final String title;
  final String imageUrl;
  final String price;
  final String description;

  MenuItem({required this.title, required this.imageUrl, required this.description, required this.price});
}
// Widget untuk setiap menu
class MenuCard extends StatelessWidget {
  final MenuItem menuItem;

  const MenuCard({required this.menuItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            menuItem.imageUrl,
            height: 80,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Text('Gagal memuat gambar');
            },
          ),
          SizedBox(height: 10),
          Text(
            menuItem.title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 5),
          Text(
            menuItem.description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 5),
          Text(
            menuItem.price,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
          ),
        ],
      ),
    );
  }
}

// Card untuk service di halaman katalog
class ServiceCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const ServiceCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            imageUrl,
            height: 80,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Text('Gagal memuat gambar');
            },
          ),
          SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}


// Tombol navigasi di bagian bawah
class NavigationButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      onTap: (int index) {
        if (index == 0) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => CatalogPage()));
        } else if (index == 1) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PromoPage()));
        } else if (index == 2) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
        }
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Promo'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profil'),
      ],
    );
  }
}