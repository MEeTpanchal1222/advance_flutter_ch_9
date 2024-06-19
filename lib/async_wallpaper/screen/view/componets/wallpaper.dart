
import 'package:flutter/material.dart';

class WallpaperImage extends StatelessWidget {
  const WallpaperImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/img.png', fit: BoxFit.cover,),
        ),
      ),
    );
  }
}
