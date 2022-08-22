import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/moduls/TabItem.dart';
import 'package:untitled9/moduls/show_relate_news.dart';

import '../models/Sources.dart';


class TabControllerItems extends StatefulWidget {
  List<Sources> sources;
  TabControllerItems(this.sources);

  @override
  State<TabControllerItems> createState() => _TabControllerItemsState();
}

class _TabControllerItemsState extends State<TabControllerItems> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(length: widget.sources.length,
            child: TabBar(
              onTap: (index){
                selectedindex=index;
                setState((){});
              },
              isScrollable: true,
              tabs: widget.sources.map((e) => TabItem(e, selectedindex==widget.sources.indexOf(e)?true:false)).toList()
            )),
        Expanded(child: ShowRelateNews(widget.sources[selectedindex]))
      ],
    );
  }
}
// for(int i=0;i<sources.length;i++)
// Tab(child: Text(sources[i].name??"",style: TextStyle(color: Colors.black),),),
// Tab(child: Text(sources[1].name??"",style: TextStyle(color: Colors.black)),),
// Tab(child: Text(sources[3].name??"",style: TextStyle(color: Colors.black)),),
// Tab(child: Text(sources[4].name??"",style: TextStyle(color: Colors.black)),),
// Tab(child: Text(sources[5].name??"",style: TextStyle(color: Colors.black)),),
// Tab(child: Text(sources[6].name??"",style: TextStyle(color: Colors.black)),),