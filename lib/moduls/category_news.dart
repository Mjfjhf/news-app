import 'package:flutter/material.dart';

class CategoryNews extends StatelessWidget {
  static const String routeName='categoy';
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
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text('Pick your category of interest',
                style: TextStyle(color: Color(0xff39A552),fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Expanded(
                child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                    itemBuilder: (context,index)=>Image.asset(images[index]),itemCount: images.length, ),
              )
            ],
          ),
        )
      ],
    );
  }
  List<String> images=[
    'assets/sports.png',
    'assets/health.png',
    'assets/enviroment.png',
    'assets/politics.png',
    'assets/science.png',
    'assets/business.png',
  ];
}
