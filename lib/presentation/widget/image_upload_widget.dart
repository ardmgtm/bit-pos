import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../core/image_helper.dart';
import 'widgets.dart';

class ImageUploadWidget extends StatefulWidget {
  final Function(String)? onImageUpload;
  final String? base64str;

  const ImageUploadWidget({
    Key? key,
    this.onImageUpload,
    this.base64str,
  }) : super(key: key);

  @override
  State<ImageUploadWidget> createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  Widget? image;

  @override
  Widget build(BuildContext context) {
    if (widget.base64str != null && widget.base64str != '') {
      image = Base64Image(
        base64String: widget.base64str!,
        height: 150,
        width: 150,
      );
    }
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => SimpleDialog(
            title: const Text('Select Image'),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  _pickImage('camera');
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 8),
                    const Text('From Camera'),
                  ],
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  _pickImage('gallery');
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.image,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(width: 8),
                    const Text('From Gallery'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
      child: image ?? _emptyImage(),
    );
  }

  void _pickImage(String source) async {
    var picker = ImagePicker();
    XFile? img;
    if (source == 'camera') {
      img = await picker.pickImage(
        source: ImageSource.camera,
        maxHeight: 200,
        maxWidth: 200,
        imageQuality: 36,
      );
    } else if (source == 'gallery') {
      img = await picker.pickImage(
        source: ImageSource.gallery,
        maxHeight: 200,
        maxWidth: 200,
        imageQuality: 36,
      );
    }
    if (img != null) {
      String imgStr = ImageHelper.base64String(await img.readAsBytes());
      setState(() {
        image = Image.file(
          File(img!.path),
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        );
      });
      if (widget.onImageUpload != null) {
        widget.onImageUpload!(imgStr);
      }
    }
  }

  Widget _emptyImage() {
    return Container(
      height: 150,
      width: 150,
      color: Colors.grey[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Icon(
            Icons.image,
            color: Colors.grey,
          ),
          Text(
            'Select Image',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
