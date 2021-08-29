import 'package:flutter/material.dart';
import 'package:soni_news_project/data/articles.dart';
import 'package:soni_news_project/screens/onboarding/description.dart';
import 'package:soni_news_project/screens/onboarding/home.dart';
import 'package:soni_news_project/screens/onboarding/nointernet.dart';
import 'package:soni_news_project/screens/onboarding/onboarding.dart';
import 'package:soni_news_project/screens/onboarding/profil.dart';
import 'package:soni_news_project/screens/onboarding/savedArticle.dart';
import 'package:soni_news_project/services/core/api.dart';
import 'package:soni_news_project/services/core/get_random_element.dart';
import 'package:soni_news_project/utils/theme.dart';

void main() {
  /*print(
    makeEverythingUrl(
      q: "Samsung",
      sortBy: getRandomElement(sorts),
      lang: getRandomElement(languages),
    ),
  );
  print(
    makeCategoryHeadlinesUrl(
      category: getRandomElement(categories),
      sortBy: getRandomElement(sorts),
      lang: getRandomElement(languages),
    ),
  );
  print(makeTrendingUrl(lang: getRandomElement(languages)));
  print(makeSearchUrl(q: "Bitcoin", lang: getRandomElement(languages)));*/
  runApp(SoniNewsApp());
}

class SoniNewsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soni News App',
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  List listPage = [];
  Widget? currentPage;
  @override
  void initState() {
    super.initState();
    listPage..add(Home())..add(SavedArticle())..add(Profil());
    currentPage = Home();
  }

  void changePage(int selectedIndex) {
    setState(() {
      currentIndex = selectedIndex;
      currentPage = listPage[selectedIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.book), label: "Saved articles"),
          BottomNavigationBarItem(
              icon: Icon(Icons.headphones), label: "Profil"),
        ],
        onTap: (selectedIndex) => changePage(selectedIndex),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 1, horizontal: 1),
          child: currentPage,
        ),
      ),
    );
  }
}
