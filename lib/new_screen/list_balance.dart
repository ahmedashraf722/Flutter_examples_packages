import 'package:flutter/material.dart';

import 'bottom_Sheet.dart';

class ListBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
       child: InkWell(
         onTap: (){
         // Navigator.of(context).push(MaterialPageRoute(builder:(context)=>BottomSheetScreenA()));
         },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Icon(
                Icons.account_balance,
                color: Colors.pinkAccent,
                size: 35,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 8),
                  child: Text('Sayed Khalifa',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text('Account Balance',
                      style: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 10),
              child: Text(
                '\$5000',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    ),
     );
  }
}
