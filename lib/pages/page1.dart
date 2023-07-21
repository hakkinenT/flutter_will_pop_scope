import 'package:flutter/material.dart';
import 'package:flutter_will_pop_scope/pages/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page 1'),
        ),
        body: Center(
          child: SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Page2(),
                  ),
                );
              },
              child: const Text('Go to Page2'),
            ),
          ),
        ),
      ),
    );
  }
}
