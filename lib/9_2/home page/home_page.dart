import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

TextEditingController controller = TextEditingController();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<HomeProvider>();
    final providerF = context.read<HomeProvider>();
    return Scaffold(
        appBar: AppBar(
          title: TextField(
            controller: controller,
          ),
          actions: [
            IconButton(
              onPressed: () {
                providerF.fetchData(controller.text);
              },
              icon: const Icon(Icons.search),
            )
          ],
        ),
        body: provider.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : GridView.builder(
                itemCount: provider.data['hits'].length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => CupertinoContextMenu(
                  actions: [
                    CupertinoContextMenuAction(
                      child: const Text("Copy"),
                      onPressed: () => Navigator.pop(context),
                      isDefaultAction: true,
                      trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                    ),
                    CupertinoContextMenuAction(
                      child: const Text("Share"),
                      onPressed: () => Navigator.pop(context),
                      isDefaultAction: true,
                      trailingIcon: CupertinoIcons.share,
                    ),
                    CupertinoContextMenuAction(
                      child: const Text("Favourite"),
                      onPressed: () => Navigator.pop(context),
                      isDefaultAction: true,
                      trailingIcon: CupertinoIcons.heart,
                    ),
                    CupertinoContextMenuAction(
                      child: const Text("Show in all Photos"),
                      onPressed: () => Navigator.pop(context),
                      isDefaultAction: true,
                      trailingIcon: CupertinoIcons.device_phone_landscape,
                    ),
                    CupertinoContextMenuAction(
                      child: const Text(
                        "Remove",
                        style: TextStyle(color: CupertinoColors.destructiveRed),
                      ),
                      onPressed: () => Navigator.pop(context),
                      isDefaultAction: true,
                      trailingIcon: CupertinoIcons.delete_simple,
                    ),
                  ],
                  child: Card(
                      child: Image.network(
                          fit: BoxFit.cover,
                          '${provider.data['hits'][index]['largeImageURL']}')),
                ),
              ));
  }
}
