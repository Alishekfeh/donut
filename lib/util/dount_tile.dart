import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlower;
  final String donutPrice;
  final  color;
  final String imageName;

  const DonutTile(
      {Key? key,
      required this.donutFlower,
      required this.donutPrice,
      required this.color,
      required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[50], borderRadius: BorderRadius.circular(12)),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: color[100],
                    borderRadius:const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  padding:const  EdgeInsets.all(12),
                  child: Text(
                    '\$ $donutPrice',
                    style: TextStyle(
                        color: color[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
              child: Image.asset(imageName,height: 120,),
            ),
            Text(donutFlower,style:const  TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            const SizedBox(height: 6,),
            Text("Dunkin",style: TextStyle(color: Colors.grey[700]),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite,color: Colors.pink[400],),
                  Icon(Icons.add,color: Colors.pink[800],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
