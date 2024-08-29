


//ggpt


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'Food delivery',
      'subtitle': 'Order food you love',
      'imagePath': 'assets/Food_Delivery.png',
    },
    {
      'title': 'pandamart',
      'subtitle': 'Essentials delivered fast',
      'imagePath': 'assets/pandamart.png',
    },
    {
      'title': 'Shops',
      'subtitle': 'Top brands to\nyour door',
      'imagePath': 'assets/shops.png',
    },
    {
      'title': 'Pick-up',
      'subtitle': 'Self-collect for\n50% off',
      'imagePath': 'assets/pick_up.png',
    },
    {
      'title': 'pandago',
      'subtitle': 'Send parcels in a \ntap',
      'imagePath': 'assets/pandago.png',
    },
  ];

  final List<Map<String, dynamic>> restaurants = [
    {
      'name': 'MMK-S FOODS',
      'rating': '4.0',
      'reviews': '50+',
      'imagePath': 'assets/MMK-S FOODS.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '5% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Food Place',
      'rating': '4.4',
      'reviews': '100+',
      'imagePath': 'assets/Food Place.jpg',
      'minOrder': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '15-30 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Burger House',
      'rating': '4.7',
      'reviews': '200+',
      'imagePath': 'assets/Burger House.jpg',
      'minOrder': 'PKR 299 minimum',
      'cuisine': 'Pakistani',
      'time': '10-25 min',
      'discount': '10% off',
      'deliveryType': 'Free Delivery',
    },
    {
      'name': 'Pizza House',
      'rating': '4.5',
      'reviews': '150+',
      'imagePath': 'assets/Pizza House.jpg',
      'minOrder': 'PKR 249 minimum',
      'cuisine': 'Pakistani',
      'time': '20-40 min',
      'discount': '',
      'deliveryType': 'Free Delivery',
    },
  ];

  // Shop
  final List<String> categories = [
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New"
  ];

  final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Deal 2",
      "price": "Rs. 549.00",
      "oldPrice": "Rs. 869.00",
      "image": "assets/cricket_deal_2.jpg"
    },
    {
      "title": "Chicken Fajita",
      "price": "from Rs. 785.00",
      "image": "assets/chicken_fajita.jpg"
    },
    {
      "title": "Chicken Tikka",
      "price": "from Rs. 785.00",
      "image": "assets/chicken_tikka.jpg"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "from Rs. 840.00",
      "image": "assets/chicken_teriyaki.jpg"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "from Rs. 710.00",
      "image": "assets/roasted_chicken_breast.jpg"
    },
    {
      "title": "Chicken Tikka Salad",
      "price": "from Rs. 845.00",
      "image": "assets/chicken_tikka_salad.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Color.fromARGB(255, 14, 153, 1), Color.fromARGB(255, 15, 161, 2)], // Deep yellow to white
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              expandedHeight: 130,
              backgroundColor: Color.fromARGB(255, 2, 182, 17),
              leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu_sharp,
                  size: 30,
                ),
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    "Your location or address will be here....",
                    style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 247, 244, 245),
                    ),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_border_rounded,
                    color: Color.fromARGB(255, 255, 254, 255),
                    size: 30,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 22,
                      child: Container(
                        height: 16,
                        width: 16,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color.fromARGB(255, 3, 168, 3),
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 254, 255, 254),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search for shop & restaurants",
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              size: 30,
                              color: Colors.black54,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: StaggeredGrid.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      children: [
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 3.1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 136, 0),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black26,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[0]['title']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        items[0]['subtitle']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Image.asset(
                                    items[0]['imagePath']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 2.05,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 115, 0),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black26,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[1]['title']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        items[1]['subtitle']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(
                                      items[1]['imagePath']!,
                                      fit: BoxFit.cover,
                                      height: 65,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 1.05,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 102, 0),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black26,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[2]['title']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        items[2]['subtitle']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(
                                      items[2]['imagePath']!,
                                      fit: BoxFit.cover,
                                      height: 59,
                                      width: 59,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 1.05,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 115, 0),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black26,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[3]['title']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        items[3]['subtitle']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 9,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 5),
                                    child: Image.asset(
                                      items[3]['imagePath']!,
                                      fit: BoxFit.cover,
                                      height:75,
                                      width: 60,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        StaggeredGridTile.count(
                          crossAxisCellCount: 2,
                          mainAxisCellCount: 1.05,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 102, 0),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                width: 0.5,
                                color: Colors.black26,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        items[4]['title']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                        ),
                                      ),
                                      Text(
                                        items[4]['subtitle']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Image.asset(
                                      items[4]['imagePath']!,
                                      fit: BoxFit.cover,
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
}
