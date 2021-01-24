import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 150,horizontal: 30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10,),
                  child: Text('Total',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 2,bottom: 5),
                  child: Text('Available balance',style: TextStyle(color: Colors.grey,fontSize: 20,),),
                ),
              ],
              
            ),
            Text('\$5000',style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
