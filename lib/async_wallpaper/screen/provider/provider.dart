
import 'dart:io';

import 'package:async_wallpaper/async_wallpaper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';


class WallpaperProvider extends ChangeNotifier{

  Future<void> setWallpaper(BuildContext context, String location) async {

    try {
      final path = await convertAssetToFile('assets/img.png');
      await AsyncWallpaper.setWallpaperFromFile(
        filePath: path,
        wallpaperLocation: location == 'Home' ? AsyncWallpaper.HOME_SCREEN : AsyncWallpaper.LOCK_SCREEN,
        goToHome: false, // Set to false to prevent redirection
      );


      // int location = WallpaperManager.BOTH_SCREEN; //can be Home/Lock Screen
      // await WallpaperManager.setWallpaperFromFile(path, location); //provide image path



      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Wallpaper set successfully"), backgroundColor: Colors.white,),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error setting wallpaper: ${e.toString()}")),
      );
    }
  }


  Future<String> convertAssetToFile(String assetPath) async {
    final dir = await getApplicationDocumentsDirectory();
    final path = '${dir.path}/wallpaper.jpeg';
    final data = await rootBundle.load(assetPath);
    final byteData = data.buffer.asUint8List();
    final File file = File(path);
    file.writeAsBytesSync(byteData);
    return path;
  }

}
