import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PhotoDetailsDialog extends StatelessWidget {
  final String imageUrl;
  final String? description;

  const PhotoDetailsDialog(
      {super.key, required this.imageUrl, this.description});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              title: const Text('Photo Details'),
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        description ?? 'No Description',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                    InteractiveViewer(
                      boundaryMargin: const EdgeInsets.all(20),
                      minScale: 0.1,
                      maxScale: 1.6,
                      child: CachedNetworkImage(
                          imageUrl: imageUrl,
                          errorWidget: (context, url, error) => Container()),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
