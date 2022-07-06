import 'package:discord/components/drawer/drawer_navigation_bar.dart';
import 'package:discord/components/drawer/drawer_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static final scaffoldHomeKey = GlobalKey<ScaffoldState>();
  final isBottomNavigationBarVisible = ValueNotifier(false);

  @override
  void dispose() {
    isBottomNavigationBarVisible.dispose();
    super.dispose();
  }

  void toggleDrawer() {
    if (scaffoldHomeKey.currentState!.isDrawerOpen) {
      scaffoldHomeKey.currentState!.closeDrawer();
    } else {
      scaffoldHomeKey.currentState?.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldHomeKey,
      drawer: const DrawerView(),
      // endDrawer: const EndDrawerView(),
      onDrawerChanged: (value) {
        isBottomNavigationBarVisible.value = value;
      },
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
      drawerScrimColor: Colors.transparent,
      drawerEdgeDragWidth: MediaQuery.of(context).size.width,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: toggleDrawer,
        ),
        actions: [
          const Icon(Icons.phone_in_talk),
          const Icon(Icons.videocam_rounded),
          IconButton(
            onPressed: toggleDrawer,
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
      bottomNavigationBar: ValueListenableBuilder<bool>(
        valueListenable: isBottomNavigationBarVisible,
        builder: (context, value, child) {
          if (value) return child!;

          return const SizedBox.shrink();
        },
        child: const DrawerNavigationBar(),
      ),
    );
  }
}
