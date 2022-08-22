
import 'package:flutter/material.dart';
import 'package:untitled9/models/Sources.dart';

class TabItem extends StatelessWidget {
  Sources sources;
  bool isSelected;
  TabItem(this.sources,this.isSelected);
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(9),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(20),
        color: isSelected?Colors.green:Colors.transparent
      ),
      child: Text(sources.name??'',style: TextStyle(color: isSelected?Colors.white:Colors.black),),
    );
  }
}
