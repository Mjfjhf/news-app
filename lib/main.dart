import 'package:flutter/material.dart';
import 'package:untitled9/moduls/newas_page.dart';

import 'moduls/category_news.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        CategoryNews.routeName: (c)=> CategoryNews(),
        NewsPage.routeName: (c)=>NewsPage()
      },
      initialRoute:NewsPage.routeName ,
    );
  }
}
