import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});
  //style
  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle = Theme.of(context).colorScheme.inversePrimary;
    var mySecondaryTextStyle = Theme.of(context).colorScheme.primary;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8)
      ),
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //deleviry fee
          Column(
            children: [
              Text(
                '\$0.99',
                style: TextStyle(
                  color: myPrimaryTextStyle,
                ),
              ),
              Text(
                'Deleviry fee',
                style: TextStyle(
                  color: mySecondaryTextStyle,
                ),
              )
            ],
          ),
          //deleviry time
          Column(
            children: [
              Text(
                '15-30 mins',
                style: TextStyle(
                  color: myPrimaryTextStyle,
                ),
              ),
              Text(
                'Deleviry time',
                style: TextStyle(
                  color: mySecondaryTextStyle,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
