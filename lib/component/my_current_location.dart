import 'package:flutter/material.dart';

class MyCurrentLocoation extends StatelessWidget {
  const MyCurrentLocoation({super.key});

  void openLocationSearchBow(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Your Location'),
        content: const TextField(
          decoration: InputDecoration(hintText: 'Search adress ...'),
        ),
        actions: [
          //cancel button
          MaterialButton(onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
          ),
          //save button
          MaterialButton(onPressed: () => Navigator.pop(context),
          child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Delivery now!',
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          GestureDetector(
            onTap: () => openLocationSearchBow(context),
            child: Row(
              children: [
                //address
                Text(
                  'Hollwood Blv',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //drop down menu,
                const Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          )
        ],
      ),
    );
  }
}
