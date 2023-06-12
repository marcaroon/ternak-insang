import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ternak_insang/pages/homePage.dart';

import '../providers/articles.dart';

class createArticle extends StatelessWidget {
  createArticle({Key? key}) : super(key: key);
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController imageController = TextEditingController();
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

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
          'Post an Article',
          style: TextStyle(
            fontFamily: 'SFPRO',
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: biru
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
             Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: titleController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Title',
                    hintStyle: TextStyle(
                      fontFamily: 'SFPRO',
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Description',
                    hintStyle: TextStyle(
                      fontFamily: 'SFPRO',
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: imageController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'URL Image',
                    hintStyle: TextStyle(
                      fontFamily: 'SFPRO',
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
              ),
             Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: categoryController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Category',
                    hintStyle: TextStyle(
                      fontFamily: 'SFPRO',
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
              ),
             Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: TextField(
                  cursorColor: oren,
                  maxLines: null,
                  controller: contentController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Content',
                    hintStyle: TextStyle(
                      fontFamily: 'SFPRO',
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                    )
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  height: 55,
                  width: 150,
                  decoration: BoxDecoration(
                    color: oren,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child: TextButton(
                      child: const Text(
                        'Post',
                        style: TextStyle(
                          fontFamily: 'SFPRO',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      ),
                      onPressed: () {
                          Provider.of<Articles>(context, listen: false)
                              .postArticle(
                                'user1',                             
                                titleController.text,
                                descriptionController.text,
                                'Ammar',
                                categoryController.text,
                                contentController.text,
                                imageController.text);
                          // StatusAlert.show(
                          //   context,
                          //   duration: const Duration(seconds: 3),
                          //   title: 'Article Created',
                          //   subtitle:
                          //       'Yay your article has been created and uploaded!',
                          //   configuration:
                          //       const IconConfiguration(icon: Icons.done),
                          //   maxWidth: 260,
                          // );
                          Navigator.pop(context);
                        },
                    ),
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}