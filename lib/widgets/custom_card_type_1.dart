import 'package:fl_widgets/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text('Soy un titulo'),
            leading: Icon(Icons.book,color: AppTheme.primary,),
            subtitle: Text('Anim anim ut amet culpa Lorem dolor ad nulla proident mollit consectetur eiusmod amet. Labore et labore fugiat ullamco consectetur pariatur cillum ut. Elit irure incididunt minim culpa dolor exercitation laboris veniam nisi proident nisi.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, 
                child: const Text('Cancel'),
                ),
                TextButton(onPressed: (){}, 
                child: const Text('Ok')
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}