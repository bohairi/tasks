import 'package:flutter/material.dart';

class GridViewAdv extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:  SingleChildScrollView(
        child: GridView.extent(maxCrossAxisExtent: 300,
        //GridView.count(crossAxisCount: 2,
        physics: NeverScrollableScrollPhysics(),
        mainAxisSpacing: 10,
        crossAxisSpacing: 20,
        childAspectRatio: 0.5,
        shrinkWrap: true,
        children: [
        customComtainer("data"),
        customComtainer("data"),
        customComtainer("data"),
        customComtainer("data"),
        customComtainer("data"),
        customComtainer("data"),
        customComtainer("data"),
        customComtainer("data"),
        customComtainer("data"),
        ],),
      ),
      ),
    );
  }
}
Widget customComtainer(String data){
  return Container(
    child: Center(child: Text(data)),
    color: Colors.grey,
  );
}