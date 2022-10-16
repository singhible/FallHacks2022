import '../widgets/card_stack_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          iconSize: 30,
          icon: Icon(Icons.account_circle),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'Flake',
        ),
        actions: [
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16),
          //   child: Icon(Icons.mail_rounded),
          // ),
          IconButton(
            iconSize: 25,
            icon: Icon(Icons.mail_rounded),
            onPressed: () {},
          ),
          // CircleAvatar(
          //   radius: 20,
          //   backgroundImage: NetworkImage(
          //     'https://source.unsplash.com/50x50/?portrait',
          //   ),
          // ),
        ],
        backgroundColor: Colors.redAccent[400],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.redAccent[400],
          child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(children: [
        Expanded(child: CardsStackWidget()),
      ]),
    );
  }
}
