
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';



class IconWithLable extends StatelessWidget {
  const IconWithLable({
    super.key, required this.lable,
  });

  final String lable;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: (){
        Provider.of<WallpaperProvider>(context, listen: false).setWallpaper(context, lable);
      },
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          CircleAvatar(
            radius: 26,
            backgroundColor: Colors.grey.withOpacity(0.5),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/${lable.toLowerCase()}.png'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text('$lable Screen', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,  color: Colors.grey),)
        ],
      ),
    );
  }
}
