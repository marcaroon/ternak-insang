import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:image_picker/image_picker.dart';

import '../navigation.dart';
import 'homePage.dart';

class ProfileEdit extends StatefulWidget {
  // const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController dispNameController = TextEditingController();

  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 60,
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(
              fontFamily: 'SFPRO',
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: biru),
        ),
      ),
      body: Form(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              child: Stack(
                children: [
                  SizedBox(
                    width: 170,
                    height: 170,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(
                        image: NetworkImage(_firebaseAuth
                                .currentUser!.photoURL ??
                            'https://th.bing.com/th/id/OIP.DGePcjJ-RdJr7oivIaPxGgHaHa?w=217&h=217&c=7&r=0&o=5&dpr=1.3&pid=1.7'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: IconButton(
                        onPressed: () async {
                          ImagePicker imagePicker = ImagePicker();
                          XFile? file = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          print('${file?.path}');
                          if (file == null) return;
                          String uniqueFileName =
                              DateTime.now().millisecondsSinceEpoch.toString();
                          Reference referenceRoot =
                              FirebaseStorage.instance.ref();
                          Reference referenceDirImages =
                              referenceRoot.child('images');

                          Reference referenceImageToUpload =
                              referenceDirImages.child(uniqueFileName);
                          try {
                            await referenceImageToUpload
                                .putFile(File(file.path));
                            imageUrl =
                                await referenceImageToUpload.getDownloadURL();
                            await FirebaseAuth.instance.currentUser!
                                .updatePhotoURL(imageUrl);
                          } catch (error) {
                            //Some error occurred
                          }
                          setState(() {});
                        },
                        icon: const Icon(Icons.camera_alt),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                controller: dispNameController,
                style: const TextStyle(color: biru),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: oren)),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(width: 5, color: oren)),
                    prefixIcon: const Icon(Icons.person_outline_sharp),
                    prefixIconColor: biru,
                    hintText: 'Name',
                    hintStyle: const TextStyle(color: biru)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormField(
                controller: emailController,
                style: const TextStyle(color: biru),
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: oren)),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(width: 5, color: oren)),
                    prefixIcon: const Icon(Icons.mail_outline_rounded),
                    prefixIconColor: biru,
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: biru)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                      color: oren, borderRadius: BorderRadius.circular(30)),
                  child: Center(
                    child: TextButton(
                      child: const Text(
                        'Post',
                        style: TextStyle(
                            fontFamily: 'SFPRO',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      onPressed: () async {
                        if (dispNameController.text != "") {
                          await FirebaseAuth.instance.currentUser!
                              .updateDisplayName(dispNameController.text);
                        }

                        if (emailController.text != "") {
                          await FirebaseAuth.instance.currentUser!
                              .updateEmail(emailController.text);
                        }
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        await Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (_) => Navigation()),
                        );
                      },
                    ),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
