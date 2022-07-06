import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerNavigationBar extends StatelessWidget {
  const DrawerNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.075,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: false,
        backgroundColor: Colors.transparent,
        items: const [
          BottomNavigationBarItem(
            label: 'sf',
            icon: Icon(
              Icons.discord,
              size: 25,
            ),
          ),
          BottomNavigationBarItem(
            label: 'test',
            icon: Icon(
              Icons.emoji_people_rounded,
              size: 25.0,
            ),
          ),
          BottomNavigationBarItem(
            label: 'test',
            icon: Icon(
              Icons.search,
              size: 25.0,
            ),
          ),
          BottomNavigationBarItem(
            label: 'test',
            icon: Text('@'),
          ),
          BottomNavigationBarItem(
            label: 'test',
            icon: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aHVtYW58ZW58MHx8MHx8&w=1000&q=80',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
