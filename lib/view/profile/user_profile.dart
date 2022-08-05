import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          // profile introduction
          DottedBorder(
            dashPattern: [20, 10],
            strokeWidth: 1.5,
            borderType: BorderType.Circle,
            radius: Radius.circular(12),
            color: Get.isDarkMode ? Colors.white38 : Colors.black38,
            child: GestureDetector(
              onTap: () => Get.toNamed('/updateUserProfile'),
              child: Container(
                margin: EdgeInsets.only(top: 0),
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Column(children: [
                  Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        GestureDetector(
                          onTap: () => Get.offNamed('/updateUserProfile'),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: CachedNetworkImage(
                              key: UniqueKey(),
                              imageUrl:
                                  "https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60",
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const Image(
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/loading.gif',
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -10,
                          right: 30,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Get.isDarkMode
                                  ? Colors.purple.shade200
                                  : Colors.green.shade900,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: const Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Sunil Tamang',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Get.isDarkMode
                  ? Colors.purple.shade200
                  : Colors.green.shade900,
              letterSpacing: 1,
              wordSpacing: 1,
              fontSize: 18.0,
              height: 1.5,
            ),
          ),

          const Text(
            '9848859531',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              letterSpacing: 1,
              wordSpacing: 1,
              fontSize: 14.0,
              height: 1.3,
            ),
          ),

          SizedBox(
            height: 50,
          ),

          // profile description
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => Get.toNamed('/faq'),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed('/faq'),
                      child: Image(
                        image: AssetImage('assets/faq.png'),
                        width: 20,
                        height: 20,
                        color: Get.isDarkMode
                            ? Colors.purple.shade200
                            : Colors.green.shade800,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'FAQ',
                      style: Theme.of(context).primaryTextTheme.labelMedium,
                    )
                  ],
                ),
                Divider(),
              ],
            ),
          ),

          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => Get.toNamed('/license'),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () => Get.toNamed('/license'),
                      child: Image(
                        image: AssetImage('assets/license.png'),
                        width: 20,
                        height: 20,
                        color: Get.isDarkMode
                            ? Colors.purple.shade200
                            : Colors.green.shade800,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'License',
                      style: Theme.of(context).primaryTextTheme.labelMedium,
                    )
                  ],
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => Get.toNamed('/terms&Conditions'),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () => Get.offNamed('/terms&Conditions'),
                      child: Image(
                        image: AssetImage('assets/terms.png'),
                        width: 20,
                        height: 20,
                        color: Get.isDarkMode
                            ? Colors.purple.shade200
                            : Colors.green.shade800,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Terms & Conditions',
                      style: Theme.of(context).primaryTextTheme.labelMedium,
                    )
                  ],
                ),
                Divider(),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: (() => Get.toNamed('/privacyPolicy')),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                      image: AssetImage('assets/privacy.png'),
                      width: 20,
                      height: 20,
                      color: Get.isDarkMode
                          ? Colors.purple.shade200
                          : Colors.green.shade800,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Privacy Policy',
                      style: Theme.of(context).primaryTextTheme.labelMedium,
                    )
                  ],
                ),
                Divider(),
              ],
            ),
          ),

          SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () => Get.offNamed('/login'),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () => Get.offNamed('/login'),
                      child: Image(
                        image: AssetImage('assets/logout.png'),
                        width: 20,
                        height: 20,
                        color: Get.isDarkMode
                            ? Colors.purple.shade200
                            : Colors.green.shade800,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Logout',
                      style: Theme.of(context).primaryTextTheme.labelMedium,
                    )
                  ],
                ),
                Divider(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
