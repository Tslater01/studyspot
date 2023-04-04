import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';


class ProfilePicturePicker extends StatefulWidget {
  @override


  _ProfilePicturePickerState createState() => _ProfilePicturePickerState();
}

class _ProfilePicturePickerState extends State<ProfilePicturePicker> 
{
  late File _imageFile;

  Future<void> _selectImage() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.image);
    if (result != null) {
      setState(() {
        _imageFile = File(result.files.single.path!);
      });
    }
  }

  Future<void> _setProfilePicture() async {
    final appDir = await getApplicationDocumentsDirectory();
    final profilePictureDir = Directory('${appDir.path}/profile_picture');
    if (!await profilePictureDir.exists()) {
      await profilePictureDir.create(recursive: true);
    }
    final profilePicturePath = '${profilePictureDir.path}/profile_picture.jpg';
    await _imageFile.copy(profilePicturePath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Picture'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_imageFile != null)
              Image.file(_imageFile),
            ElevatedButton(
              onPressed: _selectImage,
              child: Text('Select Image'),
            ),
            ElevatedButton(
              onPressed: _setProfilePicture,
              child: Text('Set Profile Picture'),
            ),
          ],
        ),
      ),
    );
  }
}
