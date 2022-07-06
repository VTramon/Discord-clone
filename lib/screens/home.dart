import 'package:discord/components/drawer/drawer_navigation_bar.dart';
import 'package:discord/components/drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  bool isBottomNavigationBarVisible = false;
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldHomeKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: scaffoldHomeKey,
        // ignore: void_checks
        drawer: const DrawerView(),
        // endDrawer: const EndDrawerView(),
        onDrawerChanged: (value) {
          if (value == true) {
            widget.isBottomNavigationBarVisible = true;
          } else {
            widget.isBottomNavigationBarVisible = false;
          }
        },
        drawerEnableOpenDragGesture: true,
        endDrawerEnableOpenDragGesture: true,
        drawerScrimColor: Colors.transparent,
        drawerEdgeDragWidth: MediaQuery.of(context).size.width,
        appBar: AppBar(
          leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                scaffoldHomeKey.currentState?.openDrawer();
              }),
          actions: [
            const Icon(Icons.phone_in_talk),
            const Icon(Icons.videocam_rounded),
            IconButton(
              onPressed: () {
                scaffoldHomeKey.currentState?.openEndDrawer();
              },
              icon: const Icon(Icons.group_outlined),
            )
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.background),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: SvgPicture.asset(
                  'images/home_icon.svg',
                  width: 500.0,
                  height: 200.0,
                ),
              ),
              Text(
                'Ninguém por perto para brincar com Wumpus',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontFamily: 'Open Sans'),
              )
            ],
          ),
        ),
        bottomNavigationBar:
            //  widget.isBottomNavigationBarVisible
            // ?
            const DrawerNavigationBar()
        // : null,
        );
  }
}
