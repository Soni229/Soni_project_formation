import 'package:flutter/material.dart';
import 'package:soni_news_project/data/articles.dart';
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
      home: OnboardingPage(),
      //home: SavedArticle()
    );
  }
}
