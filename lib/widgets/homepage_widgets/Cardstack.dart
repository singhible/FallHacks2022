import 'package:flutter/material.dart';
import '/models/Profile.dart';
import 'DragWidget.dart';

//enum Swipe { left, right, none }

class CardsStackWidget extends StatefulWidget {
  const CardsStackWidget({Key? key}) : super(key: key);

  @override
  State<CardsStackWidget> createState() => _CardsStackWidgetState();
}

class _CardsStackWidgetState extends State<CardsStackWidget> {
  List<Profile> dragabbleItems = [
    const Profile(
        name: 'Baban',
        distance: '10 miles away',
        groupNumber: 'assets/images/avatar_1.png'),
    const Profile(
        name: 'manraj',
        distance: '10 miles away',
        groupNumber: 'assets/images/avatar_2.png'),
    const Profile(
        name: 'pardeep',
        distance: '10 miles away',
        groupNumber: 'assets/images/avatar_3.png'),
    const Profile(
        name: 'gurmehar',
        distance: '10 miles away',
        groupNumber: 'assets/images/avatar_4.png'),
    const Profile(
        name: 'akdfn;ldsknf',
        distance: '10 miles away',
        groupNumber: 'assets/images/avatar_5.png'),
  ];

  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) => Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: List.generate(dragabbleItems.length, (index) {
                return DragWidget(
                  profile: dragabbleItems[index],
                  index: index,
                  swipeNotifier: swipeNotifier,
                );
              }),
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: 700.0,
                  width: 80.0,
                  color: Colors.transparent,
                ),
              );
            },
            onAccept: (int index) {
              setState(() {
                dragabbleItems.removeAt(index);
              });
            },
          ),
        ),
        Positioned(
          right: 0,
          child: DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  height: 700.0,
                  width: 80.0,
                  color: Colors.transparent,
                ),
              );
            },
            onAccept: (int index) {
              setState(() {
                dragabbleItems.removeAt(index);
              });
            },
          ),
        ),
      ],
    );
  }
}
