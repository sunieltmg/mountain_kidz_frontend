import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>();
  int rewards = 0;

  List<int> items = [10, 20, 50, 100, 200];

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daily Bonus',
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '4',
                  style: Theme.of(context).primaryTextTheme.titleLarge,
                ),
                SizedBox(
                  width: 10,
                ),
                CachedNetworkImage(
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  imageUrl:
                      'https://cdn-icons-png.flaticon.com/512/765/765093.png',
                  placeholder: (context, url) => ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/loading.gif',
                        )),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ),
            SizedBox(
              height: 80,
            ),
            SizedBox(
              height: 280,
              child: FortuneWheel(
                selected: selected.stream,
                animateFirst: false,
                items: [
                  for (int i = 0; i < items.length; i++) ...<FortuneItem>{
                    FortuneItem(
                        child: Text(
                      items[i].toString(),
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
                    )),
                  },
                ],
                onAnimationEnd: () {
                  setState(() {
                    rewards = items[selected.value];
                  });
                  print(rewards);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: Get.isDarkMode
                          ? Colors.purple.shade300
                          : Colors.green,
                      content: Text(
                          "You just won " + rewards.toString() + " Diamonds!"),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected.add(Fortune.randomInt(0, items.length));
                });
              },
              child: Container(
                height: 40,
                width: 120,
                color: Get.isDarkMode ? Colors.purple.shade400 : Colors.green,
                child: Center(
                  child: Text("SPIN"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
