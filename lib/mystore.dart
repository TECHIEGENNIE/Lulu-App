import 'package:flutter/material.dart';

class MyStore extends StatefulWidget {
  const MyStore({super.key});

  @override
  State<MyStore> createState() => _MyStoreState();
}

class _MyStoreState extends State<MyStore> {
  List<String> categories = [
    'Fashion',
    'Electronics',
    'Furniture',
    'Utensil',
    'Games'
  ];

  final List<Map<String, String>> products = [
    {
      'image':
          'assets/store_images/airfryer.png', // Replace with your image URL
      'name': 'Airfryer',
      'price': '\$59.99',
    },
    {
      'image': 'assets/store_images/blender.png', // Replace with your image URL
      'name': 'Blender',
      'price': '\$20.99',
    },
    {
      'image': 'assets/store_images/lash.png', // Replace with your image URL
      'name': 'Lashes',
      'price': '\$3.99',
    },
    {
      'image': 'assets/store_images/iron.png', // Replace with your image URL
      'name': 'Iron',
      'price': '\$19.99',
    },
    {
      'image': 'assets/store_images/toaster.png', // Replace with your image URL
      'name': 'Toaster',
      'price': '\$21.99',
    },
    {
      'image':
          'assets/store_images/headphone.png', // Replace with your image URL
      'name': 'HeadPhone',
      'price': '\$22.99',
    },
  ];

  List<Map<String, String>> items = [
    {
      'image':
          'assets/store_images/orangeseat.png', // Replace with your image URL
      'name': 'Italian Chair',
      'price': '\$99.99',
    },
    {
      'image':
          'assets/store_images/smartwatch.png', // Replace with your image URL
      'name': 'Smart Watch',
      'price': '\$19.99',
    },
    {
      'image':
          'assets/store_images/cargo-pant.png', // Replace with your image URL
      'name': 'Cargo Pant',
      'price': '\$9.99',
    },
    {
      'image':
          'assets/store_images/grey-arm-chair.png', // Replace with your image URL
      'name': 'Grey Chair',
      'price': '\$99.99',
    },
    {
      'image':
          'assets/store_images/airfryer.png', // Replace with your image URL
      'name': 'Airfryer',
      'price': '\$59.99',
    },
    {
      'image': 'assets/store_images/blender.png', // Replace with your image URL
      'name': 'Blender,',
      'price': '\$20.99',
    },
    {
      'image': 'assets/store_images/lash.png', // Replace with your image URL
      'name': 'Lashes',
      'price': '\$3.99',
    },
    {
      'image': 'assets/store_images/iron.png', // Replace with your image URL
      'name': 'Iron',
      'price': '\$19.99',
    },
    {
      'image': 'assets/store_images/toaster.png', // Replace with your image URL
      'name': 'Toaster',
      'price': '\$21.99',
    },
    {
      'image':
          'assets/store_images/headphone.png', // Replace with your image URL
      'name': 'HeadPhone',
      'price': '\$22.99',
    },
    {
      'image':
          'assets/store_images/headphone.png', // Replace with your image URL
      'name': 'HeadPhone',
      'price': '\$12.99',
    },
    {
      'image': 'assets/store_images/pot.png', // Replace with your image URL
      'name': 'Pot',
      'price': '\$10.99',
    },
    {
      'image':
          'assets/store_images/steel-ware.png', // Replace with your image URL
      'name': 'Stainless ware',
      'price': '\$12.99',
    },
    {
      'image':
          'assets/store_images/localseat.png', // Replace with your image URL
      'name': 'Local Arm-chair',
      'price': '\$29.99',
    },
    {
      'image': 'assets/store_images/cleaner.png', // Replace with your image URL
      'name': 'Cleaner',
      'price': '\$29.99',
    },
    {
      'image': 'assets/store_images/knife.png', // Replace with your image URL
      'name': 'Knife set',
      'price': '\$10.99',
    },
    {
      'image':
          'assets/store_images/iphone11.png', // Replace with your image URL
      'name': 'iphone 11-pro',
      'price': '\$200.99',
    },
    {
      'image':
          'assets/store_images/iphone12.png', // Replace with your image URL
      'name': 'iphone 12',
      'price': '\$250.99',
    },
    {
      'image':
          'assets/store_images/iphone12-pro.png', // Replace with your image URL
      'name': 'iphone 12-pro',
      'price': '\$10.99',
    },
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.search, color: Colors.white, size: 30),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart, color: Colors.white, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Categories Section
            Container(
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ListView.builder(
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Chip(
                        label: Text(
                          categories[index],
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                            color: const Color.fromARGB(255, 68, 67, 67),
                            width: 2,
                          ),
                        ),
                        backgroundColor: const Color.fromARGB(95, 8, 7, 7),
                      ),
                    );
                  },
                ),
              ),
            ),
            // Limited Stock Deals Section
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Limited Stock Deals',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            // PageView Section
            SizedBox(
              height: 220, // Adjust height for PageView
              child: PageView.builder(
                itemCount: products.length,
                controller: PageController(viewportFraction: 0.8),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Display image
                          ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),
                            child: Image.asset(
                              product['image']!,
                              height: 120,
                              width: double.infinity,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          // Product name
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              product['name']!,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          // Product price
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            child: Text(
                              product['price']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            // Handpicked for You Section
            Container(
              color: Colors.orange,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Handpicked for you',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See All',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            // GridView Section
            GridView.builder(
              physics:
                  NeverScrollableScrollPhysics(), // Disable GridView's own scroll
              shrinkWrap: true, // Let GridView size itself based on its content
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.asset(
                        items[index]['image']!,
                        width: 130,
                        height: 130,
                      ),
                      Text(
                        items[index]['name']!,
                      ),
                      Text(items[index]['price']!),
                      OutlinedButton(
                        onPressed: () {},
                        child: const Text(
                          'Add to Cart',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.view_compact_outlined), label: 'Category'),
          NavigationDestination(icon: Icon(Icons.person_outline_rounded), label: 'Account'),
          NavigationDestination(icon: Icon(Icons.help_outline), label: 'Help'),
        ],
        onDestinationSelected: (int index){
         setState(() {
            currentPage = index;
         });
        },
        
        selectedIndex: currentPage,
      ),
    ));
  }
}
