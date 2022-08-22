import 'package:flutter/material.dart';
import 'package:untitled9/models/NewsResponse.dart';
import 'package:untitled9/models/Sources.dart';
import 'package:untitled9/shared/network/api_manager.dart';

class ShowRelateNews extends StatelessWidget {
  Sources source;
  ShowRelateNews(this.source);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future:  ApiManager.getResponseNews(source),
        builder: (context,snap){
          if(snap.connectionState==ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snap.hasError){
            return AlertDialog(
              content: Text('There are some error'),
              actions: [
                TextButton(onPressed: (){Navigator.pop(context);}, child: Text('OK'))
              ],
            );
          }
          List<Articles> allArticles=snap.data?.articles??[];
          return ListView.builder(itemBuilder: (_,index){
            return Text(allArticles[index].title??'');
          },itemCount: allArticles.length,);
        });
  }
}
