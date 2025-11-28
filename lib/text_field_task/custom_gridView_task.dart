import 'package:flutter/material.dart';
import 'package:flutter_all_applications/text_field_task/custom_describtion.dart';

class CustomGridviewTask extends StatefulWidget {
String title;
String subtitle;
String urlImaige;
CustomGridviewTask({required this.title, required this.subtitle,required this.urlImaige});
  @override
  State<CustomGridviewTask> createState() => _CustomGridviewTaskState();
}

class _CustomGridviewTaskState extends State<CustomGridviewTask> {
  bool flagFavourit = false;
  bool flagStar = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_)=>CustomDescribtion(urlImaige: "assets/image/double_chease_burger.webp", title: "Hamburger Veggie Burger", essay: "khkuh kjnkjnkj kbbkb kjbhkgjf yguftyf drgfdg gfdg  fdgfdg gfgfg dfgsg dfgsfgs gfsgs sgfsg "))),
      child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width ,
                height:  MediaQuery.of(context).size.height * 0.1,
                child: Image(image: AssetImage(widget.urlImaige))
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),),
              Text(widget.subtitle,
              style: TextStyle(
                fontSize: 15
              ),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => setState(() {
                      flagStar = !flagStar;
                    }),
                    child: flagStar? Icon(Icons.star,color: Colors.amber,) : Icon(Icons.star_border_outlined)),
                  InkWell(
                    onTap: () =>setState(() {
                      flagFavourit = !flagFavourit;
                    }),
                    child: flagFavourit? Icon(Icons.favorite,
                    color: Colors.red,) : Icon(Icons.favorite_outline))
                  
                ],
              )
            ],
            ),
          ),
        ),
    );
  }
}