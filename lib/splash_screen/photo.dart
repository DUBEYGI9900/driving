import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  File? _image;

  void _getfromcamera() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
    Navigator.pop(context);
  }

  void _getfromgallery() async {
    XFile? pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
    Navigator.pop(context);
  }

  void _showImageDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Please choose an option"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  _getfromcamera();
                },
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.camera,
                        color: Colors.purple,
                      ),
                    ),
                    Text("Camera"),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  _getfromgallery();
                },
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.image,
                        color: Colors.purple,
                      ),
                    ),
                    Text("Gallery"),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          _showImageDialog();
        },
        child: CircleAvatar(
          radius: 30,
          backgroundColor: Color.fromARGB(255, 155, 150, 150),
          backgroundImage: _image == null ? null : FileImage(_image!),
          child: _image == null
              ? Icon(
                  Icons.camera_enhance,
                  size: 30, // Set the size to a valid value
                  color: Colors.amber,
                )
              : null,
        ),
      ),
    );
  }
}
