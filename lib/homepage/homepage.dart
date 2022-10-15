import 'package:flutter/material.dart';

class TopNav extends StatelessWidget {
  const TopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.account_circle),
          centerTitle: true,
          title: const Text(
            'Flake',
          ),
          actions: const [
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   child: Icon(Icons.mail_rounded),
            // ),
            Icon(Icons.mail_rounded),
            // CircleAvatar(
            //   radius: 20,
            //   backgroundImage: NetworkImage(
            //     'https://source.unsplash.com/50x50/?portrait',
            //   ),
            // ),
          ],
          backgroundColor: Color.fromARGB(255, 117, 154, 15),
        ),
      );
}
