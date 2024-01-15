import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Text("Mero Din"),
            Text("Hehehha"),
            Container(
              height: 100,
              padding: EdgeInsets.all(24),
              child: PageView(
                controller: pageController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Text("Enter you age"),
                      Text(" Sulav"),
                    ],
                  ),
                  Column(
                    children: [
                      Text("Enter you name"),
                      Text(" 12"),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
                onTap: () {
                  pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.bounceIn);
                },
                child: Text("Next")),
            Text("Prev"),
          ],
        ),
      ),
    );
  }
}
