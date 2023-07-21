import 'package:flutter/material.dart';
import 'package:flutter_will_pop_scope/pages/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page 2'),
        ),
        body: Center(
          child: SizedBox(
            width: double.maxFinite,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const Page3(),
                  ),
                );
              },
              child: const Text('Go to Page3'),
            ),
          ),
        ),
      ),
    );
  }
}
