import 'package:flutter/material.dart';

class NormalView extends StatefulWidget {
  NormalView({Key? key}) : super(key: key);

  @override
  State<NormalView> createState() => _NormalViewState();
}

class _NormalViewState extends State<NormalView> {
  // SetState를 통해서 count를 변경해주고, update()를 통해서 반영해준다. controller 역할 
  int count = 0;
  void update() => setState(() {});

  void incrementCounter() {
    count++;
    update();
  }

  void decrementCounter() {
    count--;
    update();
  }
  // 여기까지가 controller 역할. 아래쪽부터는 view 역할

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('NO 패턴')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(count.toString(), style: TextStyle(fontSize: 150)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: incrementCounter, child: const Text('+')),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: decrementCounter, child: const Text('-')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}