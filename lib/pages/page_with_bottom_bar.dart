import 'package:flutter/material.dart';

class PageWithBottomBar extends StatefulWidget {
  const PageWithBottomBar({super.key});

  @override
  State<PageWithBottomBar> createState() => _PageWithBottomBarState();
}

class _PageWithBottomBarState extends State<PageWithBottomBar> {
  List<String> pages = ['Page 1', 'Page 2', 'Page 3'];
  int currentIndex = 0;

  _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (currentIndex == 0) {
          return true;
        }

        setState(() {
          currentIndex = 0;
        });

        return false;
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('PageWithBottomBar')),
        body: Center(
          child: Text(pages[currentIndex]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
          currentIndex: currentIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
