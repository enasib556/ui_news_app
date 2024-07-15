import 'package:flutter/material.dart';
import 'package:news_app_itit/widget/featured_news_card.dart';
import 'package:news_app_itit/widget/filter_categories.dart';
import 'package:news_app_itit/widget/image_card.dart';
import 'package:news_app_itit/widget/news_header.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFFFFFF),
        toolbarHeight: 80.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Dogecoin to the moon ...",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFFF3A44),
                    Color(0xFFFF8086),
                  ],
                ),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(Icons.notifications, color: Colors.white),
                    Positioned(
                      right: 0,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle,
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
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NewsHeader(),
              FeaturedNewsCard(),
              SizedBox(height: 20),
              FilterCategories(),
              SizedBox(height: 20),
              ImageCard(
                imagePath: 'assets/images/dr.png',
                mainText: '5 things to know about the conundrum of lupus',
                leftBottomText: 'SpecMatt Villano',
                rightBottomText: 'Sunday, 9 May 2021',
              ),
              SizedBox(height: 16),
              ImageCard(
                imagePath: 'assets/images/yoga.png',
                mainText: '4 ways families can ease anxiety together',
                leftBottomText: 'Zain Korsgaard',
                rightBottomText: 'Sunday, 9 May 2021',
              ),
              SizedBox(height: 16),
              ImageCard(
                imagePath: 'assets/images/bride.png',
                mainText:
                    'What to do if you are planning or attending a wedding during the pandemic',
                leftBottomText: '',
                rightBottomText: '',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
