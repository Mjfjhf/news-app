
import 'package:flutter/material.dart';
import 'package:untitled9/models/Sources.dart';
import 'package:untitled9/models/SourseResponse.dart';
import 'package:untitled9/moduls/show_relate_news.dart';
import 'package:untitled9/moduls/tab_controller.dart';
import 'package:untitled9/shared/network/api_manager.dart';



class NewsPage extends StatelessWidget {
static const String routeName='newas page';
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          body: Image.asset('assets/bg_app.png',fit: BoxFit.cover ,height: double.infinity,),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromRadius(35),
            child: AppBar(
              backgroundColor: Color(0xff39A552),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight:Radius.circular(30) )
              ),
              title: Text('News App',style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
              ),),
              centerTitle: true,
              leading: Icon(Icons.list_alt_outlined,size: 30,),
            ),
          ),
          body: FutureBuilder<SourseResponse>(
           future: ApiManager.getApi(),
             builder: (context,snap){
             if(snap.connectionState==ConnectionState.waiting)
               {
                 return Center(child: CircularProgressIndicator());
               }
             if('ok'!=snap.data?.status){
               return Text('thre are somthing error');
             }
             List<Sources> allSources=snap.data?.sources??[];
             return TabControllerItems(allSources);

             }

                ),
        )
      ],
    );
  }
}
