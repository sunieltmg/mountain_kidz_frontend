import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mountain_kidz_app/provider/message_provider.dart';
import 'package:confetti/confetti.dart';

class QuizCompleted extends StatelessWidget {
  QuizCompleted({Key? key}) : super(key: key);
  final controller = ConfettiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz',
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Congratulations !',
                  style: Theme.of(context).primaryTextTheme.titleLarge,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You have got 4 diamonds',
                      style: Theme.of(context).primaryTextTheme.bodyLarge,
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
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/quizConfirm.gif'),
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    primary:
                        Get.isDarkMode ? Colors.purple.shade100 : Colors.green,
                  ),
                  icon: Icon(Icons.person),
                  onPressed: () => Get.toNamed('/leaderboard'),
                  label: const Text(
                    'View Leaderboard',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
